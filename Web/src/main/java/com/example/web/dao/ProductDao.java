package com.example.web.dao;

import com.example.web.connector.JdbiConnect;
import com.example.web.model.Category;
import com.example.web.model.Products;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ProductDao {
    private final Jdbi jdbi;

    public ProductDao(){
        this.jdbi = JdbiConnect.getJdbi();
     }
     public List<Products> getAllProducts(){
         return jdbi.withHandle(handle -> {
             return handle.createQuery("SELECT p.id, p.category_id, p.name, p.price, pi.image_url " +
                             "FROM products p " +
                             "LEFT JOIN product_imgs pi ON p.id = pi.product_id")
                     .mapToBean(Products.class).list();
         });
     }

    // Lấy sản phẩm
    public List<Products> getProductsByPriceFilter(int page, int pageSize, String sortOrder,
                                                   double minPrice, double maxPrice, int category,
                                                   String brand) {
        int offset = (page - 1) * pageSize;
        return jdbi.withHandle(handle -> {
            String orderClause = " price ASC"; // Mặc định
            if ("price_desc".equals(sortOrder)) {
                orderClause = "price DESC";
            }

            StringBuilder sqlBuilder = new StringBuilder("SELECT p.id, p.name, p.price, pi.image_url " +
                    "FROM products p " +
                    "LEFT JOIN product_imgs pi ON p.id = pi.product_id " +
                    "WHERE p.price BETWEEN :minPrice AND :maxPrice ");

            if (category > 0) {
                sqlBuilder.append("AND p.category_id = :category ");
            }
            if (brand != null && !brand.isEmpty()) {
                sqlBuilder.append("AND p.brand = :brand ");
            }

            sqlBuilder.append("ORDER BY ").append(orderClause)
                    .append(" LIMIT :limit OFFSET :offset");

            var query = handle.createQuery(sqlBuilder.toString())
                    .bind("minPrice", minPrice)
                    .bind("maxPrice", maxPrice)
                    .bind("category", category > 0 ? category : null)
                    .bind("brand", (brand != null && !brand.isEmpty()) ? brand : null)
                    .bind("offset", offset)
                    .bind("limit", pageSize);

            return query.mapToBean(Products.class).list();
        });
    }


    // Đếm tổng số sản phẩm
    public int getProductCountByPriceFilter(double minPrice, double maxPrice, int category, String brand) {
        return jdbi.withHandle(handle -> {
            // Tạo câu truy vấn SQL để đếm số lượng sản phẩm với bộ lọc
            String sql = "SELECT COUNT(*) FROM products WHERE price BETWEEN :minPrice AND :maxPrice " +
                    (category > 0 ? "AND category_id = :category " : "") +
                    (brand != null && !brand.isEmpty() ? "AND brand = :brand " : "");

            // Thực thi câu truy vấn để đếm số lượng sản phẩm
            return handle.createQuery(sql)
                    .bind("minPrice", minPrice)
                    .bind("maxPrice", maxPrice)
                    .bind("category", category > 0 ? category : null)
                    .bind("brand", (brand != null && !brand.isEmpty()) ? brand : null)
                    .mapTo(Integer.class)
                    .one();
        });
    }

    public List<Products> getProductsByName(String keyword) {
        String sql = "SELECT p.id, p.category_id, p.name, p.price, pi.image_url" +
                " FROM products p +" +
                " LEFT JOIN product_imgs pi ON p.id = pi.product_id" +
                " WHERE (:keyword IS NULL OR p.name LIKE :keyword)";

        return jdbi.withHandle(handle ->
                handle.createQuery(sql)
                        .bind("keyword", keyword != null ? "%" + keyword + "%" : null)
                        .mapToBean(Products.class).list()
        );
    }

  //Lấy danh mục cho admin
  public List<Category> getCategoryForAdmin() {
    String sql = "SELECT c.id, c.name, c.description, COUNT(p.id) as quantity" +
      " FROM categories c " +
      " JOIN products p ON c.id = p.category_id" +
      " GROUP BY c.id, c.name, c.description" +
      " ORDER BY c.id ";
    return jdbi.withHandle(handle ->
      handle.createQuery(sql)
        .mapToBean(Category.class).list()
    );
  }

  //Lấy dssp cho admin
  public List<Products> getProductsForAdmin() {
    String sql = "SELECT p.id, c.name AS category_name, p.name, p.price, pd.quantity, pd.stock, pd.create_at, pd.update_at, p.brand" +
      " FROM products p JOIN product_details pd ON p.id = pd.product_id" +
      " JOIN categories c ON p.category_id = c.id" +
      " ORDER BY p.id ASC";
    return jdbi.withHandle(handle ->
      handle.createQuery(sql)
        .map((rs, ctx) -> new Products(
          rs.getInt("id"),
          rs.getString("category_name"),
          rs.getString("name"),
          rs.getDouble("price"),
          rs.getInt("quantity"),
          rs.getInt("stock"),
          rs.getTimestamp("create_at"),
          rs.getTimestamp("update_at"),
          rs.getString("brand")
        )).list()
    );
  }



//    public List<Products> findById(int id) {
//    String sql = "SELECT p.id, p.category_id, p.name, p.price, pi.image_url " +
//                 "FROM products p " +
//                 "LEFT JOIN product_imgs pi ON p.id = pi.product_id " +
//                 "WHERE p.id = ?";
//
//    return jdbi.withHandle(handle ->
//            handle.createQuery(sql)
//                  .bind("id", id) // Gắn giá trị id vào tham số :id
//                  .mapToBean(Products.class)
//                  .list()); // Trả về danh sách kết quả
//    }

  public Products findById(int id) {
    String sql = "SELECT p.id, p.category_id, p.name, p.price, pi.image_url " +
      "FROM products p " +
      "LEFT JOIN product_imgs pi ON p.id = pi.product_id " +
      "WHERE p.id = :id";

    return jdbi.withHandle(handle ->
      handle.createQuery(sql)
        .bind("id", id) // Gắn giá trị id vào tham số :id
        .mapToBean(Products.class)
        .findFirst() // Trả về phần tử đầu tiên (nếu có)
        .orElseThrow(() -> new RuntimeException("Không tìm thấy sản phẩm với ID: " + id))
    );
  }

    public static void main(String[] args) {
        ProductDao a = new ProductDao();
        a.findById(1);
    }
}
