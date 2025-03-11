<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<jsp:include page="header.jsp" />
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__links">
          <a href="index.jsp"><i class="fa fa-home"></i> Trang chủ</a>
          <span>Yêu thích</span>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->

<!-- Shop Section Begin -->
<section class="shop spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-3">
        <div class="shop__sidebar">
          <div class="sidebar__categories">
            <div class="section-title active">
              <h4>Nhãn hàng</h4>
            </div>
            <div class="categories__accordion">
              <div class="accordion" id="accordionExample">
                <div class="card">
                  <div class="card-heading">
                    <a data-toggle="collapse" data-target="#collapseOne">Kangaroo</a>
                  </div>
                  <div id="collapseOne" class="collapse" data-parent="#accordionExample">
                    <div class="card-body">
                      <ul>
                        <li><a href="#"> Kangaroo KG100HU </a></li>
                        <li><a href="#"> Kangaroo KG110A </a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- Add other brands similarly -->
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-9 col-md-9">
        <div class="row">
          <%
            String jdbcUrl = "jdbc:mysql://localhost:3306/your_database_name";
            String username = "your_username";
            String password = "your_password";
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;

            try {
              Class.forName("com.mysql.cj.jdbc.Driver");
              connection = DriverManager.getConnection(jdbcUrl, username, password);
              String sql = "SELECT * FROM favorites WHERE user_id = ?";
              PreparedStatement preparedStatement = connection.prepareStatement(sql);
              preparedStatement.setInt(1, userId); // userId cần được xác định (có thể từ session)
              resultSet = preparedStatement.executeQuery();

              while (resultSet.next()) {
                int productId = resultSet.getInt("product_id");
                String productName = getProductName(productId); // Hàm lấy tên sản phẩm từ ID
                String productImage = getProductImage(productId); // Hàm lấy hình ảnh sản phẩm từ ID
                double productPrice = getProductPrice(productId); // Hàm lấy giá sản phẩm từ ID
          %>
          <div class="col-lg-4 col-md-6">
            <div class="product__item">
              <div class="product__item__pic set-bg" data-setbg="<%= productImage %>">
                <ul class="product__hover">
                  <li><a href="<%= productImage %>" class="image-popup"><span class="arrow_expand"></span></a></li>
                  <li><a href="wish_lists.jsp"><span class="icon_heart_alt"></span></a></li>
                  <li><a href="shop-cart.jsp"><span class="icon_bag_alt"></span></a></li>
                </ul>
              </div>
              <div class="product__item__text">
                <h6><a href="product-details.jsp?id=<%= productId %>"><%= productName %></a></h6>
                <div class="product__price"><%= productPrice %> VNĐ</div>
              </div>
            </div>
          </div>
          <%
              }
            } catch (SQLException | ClassNotFoundException e) {
              e.printStackTrace();
            } finally {
              if (resultSet != null) resultSet.close();
              if (statement != null) statement.close();
              if (connection != null) connection.close();
            }
          %>
          <div class="col-lg-12 text-center">
            <div class="pagination__option">
              <a href="wish_lists.jsp">1</a>
              <a href="wish_lists.jsp">2</a>
              <a href="wish_lists.jsp">3</a>
              <a href="wish_lists.jsp"><i class="fa fa-angle-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Shop Section End -->
<jsp:include page="footer.jsp" />
