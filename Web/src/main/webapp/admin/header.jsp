<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp lang="en">

  <head>
    <meta charset="utf-8">
    <title>Lọc Xanh - Admin</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="${pageContext.request.contextPath}/assets/admin/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath}/assets/admin/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/admin/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/assets/admin/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/assets/admin/css/style.css" rel="stylesheet">
  </head>

  <body>
  <div class="">
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
      <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
        <span class="sr-only">Loadingassets.</span>
      </div>
    </div>
    <!-- Spinner End -->

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="currentPage" value="${pageContext.request.requestURI}" />
    <div class="sidebar pe-4 pb-3">
      <nav class="navbar bg-light navbar-light">
        <a href="${pageContext.request.contextPath}/admin/indexAdmin.jsp" class="navbar-brand mx-4 mb-3">
          <h3 class="text-primary">Lọc Xanh</h3>
        </a>
        <div class="d-flex align-items-center ms-4 mb-4">
          <div class="position-relative">
            <img class="rounded-circle" src="${pageContext.request.contextPath}/assets/admin/img/user.jpg" alt="" style="width: 40px; height: 40px;">
            <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
          </div>
          <div class="ms-3">
            <h6 class="mb-0">Lili</h6>
            <span>Admin</span>
          </div>
        </div>
        <div class="navbar-nav w-100">
          <a href="${pageContext.request.contextPath}/admin/indexAdmin.jsp"
             class="nav-item nav-link ${currentPage.contains('indexAdmin.jsp') ? 'active' : ''}">
            <i class="fa fa-tachometer-alt me-2"></i>Tổng quan
          </a>
          <div class="nav-item dropdown">
            <a href="${pageContext.request.contextPath}/admin/listCategories"
               class="nav-link dropdown-toggle ${currentPage.contains('listCategories.jsp') || currentPage.contains('addCategories.jsp') ? 'active' : ''}"
               data-bs-toggle="dropdown">
              <i class="fa fa-list me-2"></i>Danh mục
            </a>
            <div class="dropdown-menu bg-transparent border-0">
              <a href="${pageContext.request.contextPath}/admin/listCategories"
                 class="dropdown-item ${currentPage.contains('listCategories.jsp') ? 'active' : ''}">
                Danh sách danh mục
              </a>
              <a href="${pageContext.request.contextPath}/admin/addCategories.jsp"
                 class="dropdown-item ${currentPage.contains('addCategories.jsp') ? 'active' : ''}">
                Thêm danh mục
              </a>
            </div>
          </div>
          <div class="nav-item dropdown">
            <a href="${pageContext.request.contextPath}/admin/listProducts.jsp"
               class="nav-link dropdown-toggle ${currentPage.contains('listProducts.jsp') || currentPage.contains('addProducts.jsp') ? 'active' : ''}"
               data-bs-toggle="dropdown">
              <i class="fa fa-cube me-2"></i>Sản phẩm
            </a>
            <div class="dropdown-menu bg-transparent border-0">
              <a href="${pageContext.request.contextPath}/admin/listProducts.jsp"
                 class="dropdown-item ${currentPage.contains('listProducts.jsp') ? 'active' : ''}">
                Danh sách sản phẩm
              </a>
              <a href="${pageContext.request.contextPath}/admin/addProducts.jsp"
                 class="dropdown-item ${currentPage.contains('addProducts.jsp') ? 'active' : ''}">
                Thêm sản phẩm
              </a>
            </div>
          </div>
          <div class="nav-item dropdown">
            <a href="${pageContext.request.contextPath}/admin/listUsers"
               class="nav-link dropdown-toggle ${currentPage.contains('listUsers.jsp') || currentPage.contains('addUsers.jsp') ? 'active' : ''}"
               data-bs-toggle="dropdown">
              <i class="fa fa-users me-2"></i>Người dùng
            </a>
            <div class="dropdown-menu bg-transparent border-0">
              <a href="${pageContext.request.contextPath}/admin/listUsers"
                 class="dropdown-item ${currentPage.contains('listUsers.jsp') ? 'active' : ''}">
                Danh sách người dùng
              </a>
              <a href="${pageContext.request.contextPath}/admin/addUsers.jsp"
                 class="dropdown-item ${currentPage.contains('addUsers.jsp') ? 'active' : ''}">
                Thêm người dùng
              </a>
            </div>
          </div>
          <div class="nav-item dropdown">
            <a href="${pageContext.request.contextPath}/admin/listOrders.jsp"
               class="nav-link dropdown-toggle ${currentPage.contains('listOrders.jsp') || currentPage.contains('addOrders.jsp') ? 'active' : ''}"
               data-bs-toggle="dropdown">
              <i class="fa fa-shopping-cart me-2"></i>Đơn hàng
            </a>
            <div class="dropdown-menu bg-transparent border-0">
              <a href="${pageContext.request.contextPath}/admin/listOrders.jsp"
                 class="dropdown-item ${currentPage.contains('listOrders.jsp') ? 'active' : ''}">
                Danh sách đơn hàng
              </a>
              <a href="${pageContext.request.contextPath}/admin/addOrders.jsp"
                 class="dropdown-item ${currentPage.contains('addOrders.jsp') ? 'active' : ''}">
                Thêm đơn hàng
              </a>
            </div>
          </div>
          <a href="${pageContext.request.contextPath}/admin/listContacts"
             class="nav-item nav-link ${currentPage.contains('listContacts.jsp') ? 'active' : ''}">
            <i class="fa fa-envelope me-2"></i>Phản hồi
          </a>
          <a href="${pageContext.request.contextPath}/index.jsp"
             class="nav-item nav-link ${currentPage.contains('index.jsp') ? 'active' : ''}">
            <i class="fa fa-arrow-left me-2"></i>Về trang chủ
          </a>
        </div>
      </nav>
    </div>


    <%--  <!-- Sidebar Start -->--%>
    <%--  <div class="sidebar pe-4 pb-3">--%>
    <%--    <nav class="navbar bg-light navbar-light">--%>
    <%--      <a href="indexAdmin.jsp" class="navbar-brand mx-4 mb-3">--%>
    <%--        <h3 class="text-primary">Lọc Xanh</h3>--%>
    <%--      </a>--%>
    <%--      <div class="d-flex align-items-center ms-4 mb-4">--%>
    <%--        <div class="position-relative">--%>
    <%--          <img class="rounded-circle" src="${pageContext.request.contextPath}/assets/admin/img/user.jpg" alt="" style="width: 40px; height: 40px;">--%>
    <%--          <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>--%>
    <%--        </div>--%>
    <%--        <div class="ms-3">--%>
    <%--          <h6 class="mb-0">Lili</h6>--%>
    <%--          <span>Admin</span>--%>
    <%--        </div>--%>
    <%--      </div>--%>
    <%--      <div class="navbar-nav w-100">--%>
    <%--        <a href="indexAdmin.jsp" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"></i>Tổng quan</a>--%>
    <%--        <div class="nav-item dropdown">--%>
    <%--          <a href="listCategories.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-list me-2"></i>Danh mục</a>--%>
    <%--          <div class="dropdown-menu bg-transparent border-0" data-bs-popper="none">--%>
    <%--            <a href="listCategories.jsp" class="dropdown-item">Danh sách danh mục</a>--%>
    <%--            <a href="addCategories.jsp" class="dropdown-item">Thêm danh mục</a>--%>
    <%--          </div>--%>
    <%--        </div>--%>
    <%--        <div class="nav-item dropdown">--%>
    <%--          <a href="listProducts.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-cube me-2"></i>Sản phẩm</a>--%>
    <%--          <div class="dropdown-menu bg-transparent border-0">--%>
    <%--            <a href="listProducts.jsp" class="dropdown-item">Danh sách sản phẩm</a>--%>
    <%--            <a href="addProducts.jsp" class="dropdown-item">Thêm sản phẩm</a>--%>
    <%--          </div>--%>
    <%--        </div>--%>
    <%--        <div class="nav-item dropdown">--%>
    <%--          <a href="listUsers.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-users me-2"></i>Người dùng</a>--%>
    <%--          <div class="dropdown-menu bg-transparent border-0">--%>
    <%--            <a href="listUsers.jsp" class="dropdown-item">Danh sách người dùng</a>--%>
    <%--            <a href="addUsers.jsp" class="dropdown-item">Thêm người dùng</a>--%>
    <%--          </div>--%>
    <%--        </div>--%>
    <%--        <div class="nav-item dropdown">--%>
    <%--          <a href="listOrders.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-shopping-cart me-2"></i>Đơn hàng</a>--%>
    <%--          <div class="dropdown-menu bg-transparent border-0">--%>
    <%--            <a href="listOrders.jsp" class="dropdown-item">Danh sách đơn hàng</a>--%>
    <%--            <a href="addOrders.jsp" class="dropdown-item">Thêm đơn hàng</a>--%>
    <%--          </div>--%>
    <%--        </div>--%>
    <%--        <div class="nav-item dropdown">--%>
    <%--          <a href="listPromotions.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i--%>
    <%--            class="fa fa-percent me-2"></i>Khuyến mãi</a>--%>
    <%--          <div class="dropdown-menu bg-transparent border-0">--%>
    <%--            <a href="listPromotions.jsp" class="dropdown-item">Danh sách khuyến mãi</a>--%>
    <%--            <a href="addPromotions.jsp" class="dropdown-item ">Thêm mã khuyến mãi</a>--%>
    <%--          </div>--%>
    <%--        </div>--%>
    <%--        <a href="listContacts.jsp" class="nav-item nav-link"><i class="fa fa-envelope me-2"></i>Phản hồi</a>--%>
    <%--        <a href="index.jsp" class="nav-item nav-link"><i class="fa fa-arrow-left me-2"></i>Về trang chủ</a>--%>
    <%--      </div>--%>
    <%--    </nav>--%>
    <%--  </div>--%>
    <%--  <!-- Sidebar End -->--%>


    <!-- Content Start -->
    <div class="content">
      <!-- Navbar Start -->
      <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
        <a href="indexAdmin.jsp" class="navbar-brand d-flex d-lg-none me-4">
          <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
        </a>
        <a href="#" class="sidebar-toggler flex-shrink-0">
          <i class="fa fa-bars"></i>
        </a>
        <form class="d-none d-md-flex ms-4">
          <input class="form-control border-0" type="search" placeholder="Tìm kiếm">
        </form>
        <div class="navbar-nav align-items-center ms-auto">
          <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
              <i class="fa fa-bell me-lg-2"></i>
              <span class="d-none d-lg-inline-flex">Thông báo</span>
            </a>
            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
              <a href="#" class="dropdown-item">
                <h6 class="fw-normal mb-0">Cập nhật hồ sơ</h6>
                <small>15 phút trước</small>
              </a>
              <hr class="dropdown-divider">
              <a href="#" class="dropdown-item">
                <h6 class="fw-normal mb-0">Thêm người dùng</h6>
                <small>15 phút trước</small>
              </a>
              <hr class="dropdown-divider">
              <a href="#" class="dropdown-item">
                <h6 class="fw-normal mb-0">Thay đổi mật khẩu</h6>
                <small>15 phút trước</small>
              </a>
              <hr class="dropdown-divider">
              <a href="#" class="dropdown-item text-center">Xem tất cả thông báo</a>
            </div>
          </div>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
              <img class="rounded-circle me-lg-2" src="${pageContext.request.contextPath}/assets/admin/img/user.jpg" alt="" style="width: 40px; height: 40px;">
              <span class="d-none d-lg-inline-flex">Lili</span>
            </a>
            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
              <a href="#" class="dropdown-item">Thông tin tài khoản</a>
              <a href="#" class="dropdown-item">Cài đặt</a>
              <a href="<%=request.getContextPath()%>/logout" class="dropdown-item">Đăng xuất</a>
            </div>
          </div>
        </div>
      </nav>
      <!-- Navbar End -->
