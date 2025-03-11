<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__links">
          <a href="index.jsp"><i class="fa fa-home"></i>TRANG CHỦ</a>
          <span>LIÊN HỆ</span>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->

<!-- Contact Section Begin -->
<section class="contact spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-6">
        <div class="contact__content">
          <div class="contact__address">
            <h5>Thông tin liên hệ</h5>
            <ul>
              <li>
                <h6><i class="fa fa-map-marker"></i>Địa chỉ</h6>
                <p>Khu phố 6, phường Linh Trung, TP Thủ Đức, TP.HCM</p>
              </li>
              <li>
                <h6><i class="fa fa-phone"></i> Số điện thoại</h6>
                <p><span> 028 3896 6780</span></p>
              </li>
              <li>
                <h6><i class="fa fa-envelope"></i>Email</h6>
                <p>locxanh@gmail.com</p>
              </li>
            </ul>
          </div>
          <div class="contact__form">
            <h5>Liên hệ với chúng tôi</h5>
            <form action="<%= request.getContextPath() %>/contact" method="post">
              <h6 style="color: red"><%=request.getAttribute("notification")!=null?request.getAttribute("notification"):""%></h6>
              <input type="hidden" id="isLoggedIn" value="<%= session != null && session.getAttribute("user") != null %>">
              <input type="text" name="name" placeholder="Tên của bạn" required>
              <input type="email" name="email" placeholder="Email của bạn" required>
              <input type="text" name="title" placeholder="Tiêu đề" required>
              <textarea name="message" placeholder="Thông điệp của bạn" required></textarea>
              <button id="submit" type="submit" class="site-btn">Gửi Ngay</button>
            </form>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6">
        <div class="contact__map">
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2468.042902197304!2d106.79010007039912!3d10.871389477287503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRQLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1730662722781!5m2!1svi!2s"
            height="780" style="border:0" allowfullscreen="">
          </iframe>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Contact Section End -->
<jsp:include page="footer.jsp" />
<script>
  document.getElementById("submit").addEventListener("click", function (event) {
    const isLoggedIn = document.getElementById("isLoggedIn").value; // Giả sử bạn có một trường ẩn lưu trạng thái đăng nhập
    if (isLoggedIn !== "true") {
      event.preventDefault();
      alert("Bạn chưa đăng nhập. Vui lòng đăng nhập trước khi gửi liên hệ.");
    }
  });
</script>
