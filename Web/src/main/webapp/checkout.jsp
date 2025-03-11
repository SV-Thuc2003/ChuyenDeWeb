blog-details-2.jsp<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__links">
          <a href="index.jsp"><i class="fa fa-home"></i>Trang chủ</a>
          <span>Thanh toán</span>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
  <div class="container">
    <form action="#" class="checkout__form">
      <div class="row">
        <div class="col-lg-8">
          <h5>Chi tiết hóa đơn</h5>
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="checkout__form__input">
                <p>Họ và tên<span>*</span></p>
                <input type="text">
              </div>
            </div>

            <div class="col-lg-12">
              <div class="checkout__form__input">
                <p>Địa chỉ <span>*</span></p>
                <input type="text" placeholder="Số nhà, tên đường, xã, huyện, tỉnh (chỉ giao hàng nội thành TPHCM)">
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="checkout__form__input">
                <p>Điện thoại <span>*</span></p>
                <input type="text">
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="checkout__form__input">
                <p>Email <span>*</span></p>
                <input type="text">
              </div>
            </div>
            <div class="col-lg-12">
              <div class="checkout__form__input">
                <p>Ghi chú <span>*</span></p>
                <input type="text"
                       placeholder="Lưu ý về đơn đặt hàng của bạn, ví dụ: giao giờ hành chính">
              </div>
            </div>
            <div class="col-lg-12">
              <div class="checkout__form__input">
                <p>Nhập mã giảm giá (nếu có)<span></span></p>
                <input type="text"
                       placeholder="Nhập mã: SUNDAY123">
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="checkout__order">
            <h5>Đơn đặt hàng của bạn</h5>
            <div class="checkout__order__product">
              <ul>
                <li>
                  <span class="top__text">Sản phẩm</span>
                  <span class="top__text__right">Tổng cộng</span>
                </li>
                <li>01. Máy lọc nước RO <span>4.700.000đ</span></li>
                <li>02. Máy lọc nước nóng<br /> lạnh Karofi <span>5.000.000đ</span></li>
                <li>03. Lõi thay thế <span>500.000đ</span></li>
              </ul>
            </div>
            <div class="checkout__order__total">
              <ul>
                <li>Được giảm <span>200.000đ</span></li>
                <li>Tổng cộng <span>10.000.000đ</span></li>
              </ul>
            </div>
            <div class="checkout__order__widget">
              <p>Nếu bạn đã có tài khoản vui lòng đăng nhập trước khi thanh toán.</p>
              <label for="check-payment">
                Thanh toán tiền mặt
                <input type="checkbox" id="check-payment">
                <span class="checkmark"></span>
              </label>
              <label for="paypal">
                Chuyển khoản
                <input type="checkbox" id="paypal">
                <span class="checkmark"></span>
              </label>
            </div>
            <button type="submit" class="site-btn">Đặt hàng</button>
          </div>
        </div>
      </div>
    </form>
  </div>
</section>
<!-- Checkout Section End -->
<jsp:include page="footer.jsp" />
