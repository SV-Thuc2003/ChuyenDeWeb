<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<jsp:include page="header.jsp" />
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__links">
          <a href="index.jsp"><i class="fa fa-home"></i> Trang chủ</a>
          <a href="#">Chi tiết sản phẩm</a>
          <span>${product.name}</span>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <div class="product__details__pic">
          <img src="${product.image_url}" alt="${product.name}" class="product__big__img">
        </div>
      </div>
      <div class="col-lg-6">
        <div class="product__details__text">
          <h3>${product.name}</h3>
          <div class="product__details__price">${product.price} đ</div>
          <p>${product.description}</p>
          <div class="product__details__widget">
            <ul>
              <li><span>Tình trạng:</span> ${product.status == 'in_stock' ? 'Còn hàng' : 'Hết hàng'}</li>
              <li><span>Thương hiệu:</span> ${product.brand}</li>
              <li><span>Tính năng:</span> ${product.feature}</li>
            </ul>
          </div>
          <form action="product-detail" method="post">
            <input type="hidden" name="id" value="${product.id}">
            <button type="submit" name="action" value="add_to_cart" class="btn btn-primary">Thêm vào giỏ hàng</button>
            <button type="submit" name="action" value="buy_now" class="btn btn-success">Mua ngay</button>
            <button type="submit" name="action" value="add_to_wishlist" class="btn btn-light">
              <i class="fa fa-heart"></i>
            </button>
          </form>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="product__details__tab">
          <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">Mô tả</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">Đánh giá (${reviews.size()})</a>
            </li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tabs-1" role="tabpanel">
              <p>${product.description}</p>
            </div>
            <div class="tab-pane" id="tabs-2" role="tabpanel">
              <c:if test="${!empty reviews}">
                <ul>
                  <c:forEach var="review" items="${reviews}">
                    <li>${review}</li>
                  </c:forEach>
                </ul>
              </c:if>
              <c:if test="${empty reviews}">
                <p>Chưa có đánh giá nào cho sản phẩm này.</p>
              </c:if>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Product Details Section End -->
<jsp:include page="footer.jsp" />
