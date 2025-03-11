<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp" />
<!-- Banner Section Begin -->
<section class="banner">
  <div class="m-auto">
    <div class="banner__slider owl-carousel">
      <div class="banner__item">
        <a href="shop.jsp">
          <img src="assets/img/banner/banner-3.webp" alt="Banner 1" class="img-fluid">
        </a>
      </div>
      <div class="banner__item">
        <a href="blog-details-4.jsp">
          <img src="assets/img/banner/banner-1.webp" alt="Banner 2" class="img-fluid">
        </a>
      </div>
      <div class="banner__item">
        <a href="service.jsp">
          <img src="assets/img/banner/banner-2.webp" alt="Banner 3" class="img-fluid">
        </a>
      </div>
    </div>
  </div>
</section>
<!-- Banner Section End -->

<!-- Product Section Begin -->
<section class="product spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-4">
        <div class="section-title">
          <h4>Sản phẩm mới</h4>
        </div>
      </div>
      <div class="col-lg-8 col-md-8">
        <ul class="filter__controls">
          <li class="active" data-filter="*">Tất cả</li>
          <li data-filter=".ro">Lọc nước RO</li>
          <li data-filter=".nonglanh">Nóng - Nguội - Lạnh</li>
          <li data-filter=".deban">Âm tủ - để bàn</li>
          <li data-filter=".ionkiem">Điện giải ion kiềm</li>
        </ul>
      </div>
    </div>
    <div class="row property__gallery">
      <div class="col-lg-3 col-md-4 col-sm-6 mix ro">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/shop/shop-1.png">
            <div class="label new">New</div>
            <ul class="product__hover">
              <li><a href="assets/img/shop/shop-1.png" class="image-popup"><span class="arrow_expand"></span></a></li>
              <li><a href="#"><span class="icon_heart_alt"></span></a></li>
              <li><a href="#"><span class="icon_bag_alt"></span></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Máy lọc nước RO nóng nguội lạnh Sunhouse SHA76222KL</a></h6>
            <div class="rating">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
            <div class="product__price">6.390.000đ</div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 mix men">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/shop/shop-2.png">
            <ul class="product__hover">
              <li><a href="src/main/webapp/img/product/product-2.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
              <li><a href="#"><span class="icon_heart_alt"></span></a></li>
              <li><a href="#"><span class="icon_bag_alt"></span></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Máy lọc nước RO Karofi KAQ-X18</a></h6>
            <div class="rating">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
            <div class="product__price">5.190.000đ</div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 mix accessories">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/shop/shop-3.png">
            <div class="label stockout">out of stock</div>
            <ul class="product__hover">
              <li><a href="assets/img/shop/shop-3.png" class="image-popup"><span class="arrow_expand"></span></a></li>
              <li><a href="#"><span class="icon_heart_alt"></span></a></li>
              <li><a href="#"><span class="icon_bag_alt"></span></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Máy lọc nước RO Karofi TWP-N2396VN(W)</a></h6>
            <div class="rating">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
            <div class="product__price">6.700.000đ</div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 mix cosmetic">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/shop/shop-4.png">
            <ul class="product__hover">
              <li><a href="src/main/webapp/img/product/product-4.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
              <li><a href="#"><span class="icon_heart_alt"></span></a></li>
              <li><a href="#"><span class="icon_bag_alt"></span></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Máy lọc nước RO Toshiba TWP-N2396VN(W)</a></h6>
            <div class="rating">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
            <div class="product__price">4.420.000đ</div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 mix kid">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/shop/shop-4.png">
            <ul class="product__hover">
              <li><a href="src/main/webapp/img/product/product-4.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
              <li><a href="#"><span class="icon_heart_alt"></span></a></li>
              <li><a href="#"><span class="icon_bag_alt"></span></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Máy lọc nước RO Toshiba TWP-N2396VN(W)</a></h6>
            <div class="rating">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
            <div class="product__price">4.420.000đ</div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 mix ro ionkiem nonglanh deban">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/shop/shop-3.png">
            <div class="label stockout">out of stock</div>
            <ul class="product__hover">
              <li><a href="assets/img/shop/shop-3.png" class="image-popup"><span class="arrow_expand"></span></a></li>
              <li><a href="#"><span class="icon_heart_alt"></span></a></li>
              <li><a href="#"><span class="icon_bag_alt"></span></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Máy lọc nước RO Karofi TWP-N2396VN(W)</a></h6>
            <div class="rating">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
            <div class="product__price">6.700.000đ</div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 mix ro ionkiem nonglanh deban">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/shop/shop-3.png">
            <div class="label stockout">out of stock</div>
            <ul class="product__hover">
              <li><a href="assets/img/shop/shop-3.png" class="image-popup"><span class="arrow_expand"></span></a></li>
              <li><a href="#"><span class="icon_heart_alt"></span></a></li>
              <li><a href="#"><span class="icon_bag_alt"></span></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Máy lọc nước RO Karofi TWP-N2396VN(W)</a></h6>
            <div class="rating">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
            <div class="product__price">6.700.000đ</div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 mix ro ionkiem nonglanh deban">
        <div class="product__item">
          <div class="product__item__pic set-bg" data-setbg="img/shop/shop-3.png">
            <div class="label stockout">out of stock</div>
            <ul class="product__hover">
              <li><a href="assets/img/shop/shop-3.png" class="image-popup"><span class="arrow_expand"></span></a></li>
              <li><a href="#"><span class="icon_heart_alt"></span></a></li>
              <li><a href="#"><span class="icon_bag_alt"></span></a></li>
            </ul>
          </div>
          <div class="product__item__text">
            <h6><a href="#">Máy lọc nước RO Karofi TWP-N2396VN(W)</a></h6>
            <div class="rating">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
            </div>
            <div class="product__price">6.700.000đ</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Product Section End -->


<!-- Services Section Begin -->
<section class="services spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="services__item">
          <i class="fa fa-car"></i>
          <h6>Vận chuyển nội thành</h6>
          <p>Miễn phí vận chuyển</p>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="services__item">
          <i class="fa fa-money"></i>
          <h6>Đảm bảo hoàn tiền</h6>
          <p>Nếu có lỗi sản phẩm</p>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="services__item">
          <i class="fa fa-support"></i>
          <h6>Hỗ trợ trực tuyến 24/7</h6>
          <p>Hỗ trợ tận tình</p>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="services__item">
          <i class="fa fa-headphones"></i>
          <h6>Thanh toán an toàn</h6>
          <p>Thanh toán an toàn 100%</p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Services Section End -->

<jsp:include page="footer.jsp" />

<!-- Search Begin -->
<!--<div class="search-model">-->
<!--    <div class="h-100 d-flex align-items-center justify-content-center">-->
<!--        <div class="search-close-switch">+</div>-->
<!--        <form class="search-model-form">-->
<!--            <input type="text" id="search-input" placeholder="Search hereassetsassets.">-->
<!--        </form>-->
<!--    </div>-->
<!--</div>-->
<!-- Search End -->
<%--</body>--%>

<%--</html>--%>
