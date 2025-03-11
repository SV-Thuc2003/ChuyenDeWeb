<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__links">
          <a href="index.jsp"><i class="fa fa-home"></i>TRANG CHỦ</a>
          <span>TIN TỨC</span>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->

<!-- Blog Section Begin -->
<section class="blog spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-5">
        <div class="blog__sidebar">
          <div class="blog__sidebar__search">
            <form action="#">
              <input type="text" placeholder="Tìm kiếmassets.">
              <button type="submit"><span class="icon_search"></span></button>
            </form>
          </div>
          <div class="blog__sidebar__item">
            <h4>Tin mới nhất</h4>
            <div class="blog__sidebar__recent">
              <a href="blog-details-1.jsp" class="blog__sidebar__recent__item">
                <div class="blog__sidebar__recent__item__pic">
                  <img src="assets/img/blog/blog-1.png" alt="">
                </div>
                <div class="blog__sidebar__recent__item__text">
                  <h6>Thị trường máy lọc nước sôi<br /> động dịp cuối năm</h6>
                  <span>16/11/2024</span>
                </div>
              </a>
              <a href="blog-details-4.jsp" class="blog__sidebar__recent__item">
                <div class="blog__sidebar__recent__item__pic">
                  <img src="assets/img/blog/blog-4.png" alt="">
                </div>
                <div class="blog__sidebar__recent__item__text">
                  <h6>Vì sao nên sử dụng máy lọc <br />nước để bảo vệ sức khỏe</h6>
                  <span>16-10-2024</span>
                </div>
              </a>
              <a href="blog-details-3.jsp" class="blog__sidebar__recent__item">
                <div class="blog__sidebar__recent__item__pic">
                  <img src="assets/img/blog/blog-3.png" alt="">
                </div>
                <div class="blog__sidebar__recent__item__text">
                  <h6>Máy lọc nước Napowin sản phẩm chất  <br />lượng thương hiệu Việt</h6>
                  <span>22-10-2024</span>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-8 col-md-7 order-md-1 order-1">
        <div class="blog__details__text">
          <h3 class="text-center cochu-blog">Thị trường máy lọc nước sôi động dịp cuối năm</h3>
          <img src="assets/img/blog/details/bl-detail-1.png" alt="" class = "image-blog">
          <p>Ngày nay, thiết bị này được trang bị nhiều tính năng hiện đại với các công nghệ tân tiến để mang đến cho người dùng những trải nghiệm tốt nhất với nguồn nước tinh khiết,
            trong lành và an toàn cho cơ thể. Đơn cử như máy lọc nước có nhiều lõi lọc để loại bỏ kim loại nặng, tạp chất, cát, sạn, vi khuẩn… Nhờ đó, các chất bẩn trong nước được lọc sạch một cách tối đa, giúp hạn chế nguy cơ nhiễm các loại bệnh đường ruột, giun sán, viêm gan A… cho người dùng.</p>
          <p>Không chỉ phục vụ nhu cầu sử dụng hằng ngày, máy lọc nước còn bổ sung các khoáng chất có lợi cho cơ thể, giúp cân bằng độ pH của nước uống để tăng sức đề kháng và làm đẹp, khỏe cho làn da.
            Ngoài ra, đối với những bạn ưa chuộng lối sống xanh, sản phẩm đáp ứng được xu hướng sử dụng bình đựng nước cá nhân, không cần mua nước tinh khiết trong chai nhựa mà vẫn có nước sạch để sử dụng.</p>
          <span id="bld1" style="display: none;">
                    <p>Chuẩn bị cho mùa tết, máy lọc nước trở thành sản phẩm bán chạy hàng đầu tại các chuỗi điện máy. Theo ghi nhận tại hệ thống bán lẻ chỉ trong vài tháng cuối năm 2023,
                       doanh số của ngành hàng máy lọc nước đã tăng trưởng tới 22% và tăng 13% doanh thu so với những thời điểm khác trong năm. Trong đó, máy lọc nước RO tăng 27% và máy lọc nước nóng lạnh tăng 16%</p>
                    <p>Hệ sinh thái máy lọc nước của Lọc Xanh đa dạng dòng sản phẩm theo nhu cầu của từng người dùng. Trong đó, dòng máy phổ biến nhất là sản phẩm có công nghệ lọc RO (Reverse Osmosis).
                       Đây là công nghệ có thể loại bỏ hầu hết chất rắn, kim loại nặng, vi khuẩn mang đến nguồn nước sạch tinh khiết có thể uống ngay mà không cần đun lại. Hay dòng máy nano, cho ra nước có thể uống trực tiếp mà không cần dùng điện, cũng không có nguồn nước thải ra.
                       Chuyên sâu hơn có thể kể đến máy lọc UF (Ultra Filtration) với khe lọc kích thước 0,1 - 0,01 micron, có khả năng loại bỏ những phân tử có kích thước lớn, vi khuẩn và kim loại nặng đồng thời giữ lại khoáng chất tốt cho sức khỏe người dùng.</p>
                   </span>
          <span id="readmore" type="button" class="blog__btn" onclick="myFunction()">Xem thêm</span>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Blog Section End -->
<jsp:include page="footer.jsp" />
