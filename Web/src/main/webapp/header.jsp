<%@ page contentType="text/html;charset=UTF-8" language="java"  import="com.example.web.model.ShoppingCart" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Ashion Template">
  <meta name="keywords" content="Ashion, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Lọc Xanh | Trang chủ</title>

  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">

  <!-- Css Styles -->
  <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="assets/css/elegant-icons.css" type="text/css">
  <link rel="stylesheet" href="assets/css/jquery-ui.min.css" type="text/css">
  <link rel="stylesheet" href="assets/css/magnific-popup.css" type="text/css">
  <link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="assets/css/slicknav.min.css" type="text/css">
  <link rel="stylesheet" href="assets/css/style.css" type="text/css">
  <link rel="stylesheet" href="assets/fontawesome/css/font-awesome.css">

<% ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("cart");
if(shoppingCart ==null){
  shoppingCart = new ShoppingCart();
  session.setAttribute("cart", shoppingCart);
}
%>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
  <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
  <div class="offcanvas__close">+</div>
  <ul class="offcanvas__widget">
    <li><span class="icon_search search-switch"></span></li>
    <li><a href="<%= request.getContextPath() %>/wish_lists.jsp"><span class="icon_heart_alt"></span>
      <div class="tip">2</div>
    </a></li>
    <li><a href="<%= request.getContextPath() %>/shop-cart.jsp"><span class="icon_bag_alt"></span>
      <div class="tip">(<%= shoppingCart.getSize() %>)</div>
    </a></li>
  </ul>
  <div class="offcanvas__logo">
    <a href="./index.jsp"><img src="assets/img/logo.png" alt=""></a>
  </div>
  <div id="mobile-menu-wrap"></div>
  <div class="offcanvas__auth">
    <a href="#">Login</a>
    <a href="#">Register</a>
  </div>
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header">
  <div class="container-fluid">
    <div class="row">
      <div class="col-xl-3 col-lg-2">
        <div class="header__logo">
          <a href="./index.jsp"><img src="assets/img/logo.png" alt=""></a>
        </div>
      </div>
      <div class="col-xl-6 col-lg-7">
        <nav class="header__menu">
          <ul>
            <li class="<%= request.getRequestURI().contains("index.jsp") ? "active" : "" %>"><a href="index.jsp">TRANG CHỦ</a></li>
            <li class="<%= request.getRequestURI().contains("introduction.jsp") ? "active" : "" %>"><a href="introduction.jsp">GIỚI THIỆU</a></li>
            <li class="<%= request.getRequestURI().contains("shop.jsp") ? "active" : "" %>"><a href="<%=request.getContextPath()%>/shop">SẢN PHẨM</a></li>
            <li class="<%= request.getRequestURI().contains("service.jsp") ? "active" : "" %>"><a href="service.jsp">DỊCH VỤ</a></li>
            <li class="<%= request.getRequestURI().contains("blog.jsp") ? "active" : "" %>"><a href="blog.jsp">TIN TỨC</a></li>
            <li class="<%= request.getRequestURI().contains("contact.jsp") ? "active" : "" %>"><a href="contact.jsp">LIÊN HỆ</a></li>
          </ul>
        </nav>

      </div>
      <div class="col-lg-3">
        <div class="header__right">
          <div class="header__right__auth">
            <c:if test="${sessionScope.acc != null}">
              <a href="#">Hello ${sessionScope.acc.username}</a>
              <a href="<%=request.getContextPath()%>/logout">Logout</a>
            </c:if>
            <c:if test="${sessionScope.acc == null}">
              <a href="<%=request.getContextPath()%>/signin">Đăng nhập</a>
              <a href="<%=request.getContextPath()%>/signup">Đăng kí</a>
            </c:if>
          </div>
          <ul class="header__right__widget">
            <!--                            <li><span class="icon_search search-switch"></span></li>-->
            <li><a href="wish_lists.jsp"><span class="icon_heart_alt"></span>
            </a></li>
<%--            <li><a href="<ShoppingCartController?action=post&id=${product.id}>"><span class="icon_bag_alt"></span>--%>
              <li><a href="shop-cart.jsp"><span class="icon_bag_alt"></span>
              </a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="canvas__open">
      <i class="fa fa-bars"></i>
    </div>

    <!--          tìm kiếm-->
    <div class="row justify-content-center">
      <div class="col-md-7" style="margin-bottom: 20px;">
        <form action="#" class="d-flex">
          <input type="text" class="form-control search-input me-2" placeholder="Nhập tên sản phẩm bạn muốn tìm kiếm?">
          <button type="submit" class="btn btn-danger search-btn">
                  <span class="icon_search search-switch">
                  </span>
          </button>
        </form>
      </div>
    </div>
  </div>

</header>
<!-- Header Section End -->
