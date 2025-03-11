package com.example.web.service;

import com.example.web.dao.ProductDao;
import com.example.web.model.Category;
import com.example.web.model.Products;

import java.util.List;

public class ProductService {
    ProductDao productDao = new ProductDao();

  public ProductService() {}

    public List<Products> getAllProducts() {
        return productDao.getAllProducts();
    }

    public List<Products> getProductsByPriceFilter(int page, int pageSize, String sortOrder,  double minPrice, double maxPrice, int category, String brand) {
        return productDao.getProductsByPriceFilter(page, pageSize, sortOrder, minPrice, maxPrice, category, brand);
    }
    public int getProductCountByPriceFilter(double minPrice, double maxPrice, int category, String brand){
        return productDao.getProductCountByPriceFilter(minPrice, maxPrice, category, brand);
    }

  public List<Category> getCategoryForAdmin() {
    return productDao.getCategoryForAdmin();
  }
  public List<Products> getProductsForAdmin() {
    return productDao.getProductsForAdmin();
  }
public Products findById(int id) {
  return productDao.findById(id);
}
}
