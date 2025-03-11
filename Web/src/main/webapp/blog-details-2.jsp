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
              <input type="text" placeholder="Tìm kiếm...">
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
          <h3 class="text-center cochu-blog">Máy biến đổi nước RO thành nước ion kiềm tươi</h3>
          <img src="assets/img/blog/details/blog-detail-2.png" alt="" class = "image-blog">
          <h4 style="font-weight: bold;">Phù hợp với các máy lọc nước trên thị trường</h4>
          <p>Nhận thấy tác dụng tuyệt vời của nước ion kiềm - nguồn nước được khuyến khích sử dụng hàng ngày vì hỗ trợ mang đến những dấu hiệu tích cực tốt cho sức khỏe, thương hiệu sở hữu nhà máy sản xuất máy lọc nước lớn bậc nhất Đông Nam Á là Daikiosan / Makano đã xác định phải mang nguồn nước tốt này cho người dân Việt Nam được sử dụng phổ biến.</p>
          <p>Theo khảo sát thì hiện có khoảng 12 triệu khách hàng đang sử dụng máy lọc nước RO các loại. Mà máy lọc nước RO rất phù hợp lọc sạch nguồn nước ở Việt Nam, nhưng bộ lõi khoáng để bổ sung khoáng cho nước sau lọc lại nhanh hết tác dụng, nước dễ mang tính a xít nhẹ, dùng lâu dài có thể ảnh hưởng tới sức khỏe.
          </p>
          <span id="bld1" style="display: none;">
                  <p>Với mong muốn giúp người tiêu dùng tiết kiệm chi phí tối ưu nhất bằng cách tận dụng hệ thống máy lọc nước đang sử dụng, chỉ cần sử dụng thêm Máy biến đổi nước RO thành nước ion kiềm tươi là khách hàng đã sở hữu dòng nước ion kiềm tươi với giá công bố chỉ 6,9 triệu đồng, chưa bao gồm chương trình khuyến mãi.</p>
                  <h4 style="font-weight: bold;">Đảm bảo nước sạch, nước tốt - ion kiềm tươi giàu hydrogen</h4>
                  <p>Khi được đặt câu hỏi, với bộ máy nhỏ gọn như vậy làm sao có thể đáp ứng lọc sạch nước và tạo nước ion kiềm? Đại diện hãng lý giải về quy trình vận hành của máy như sau: Nguồn nước sẽ được lọc bằng máy lọc nước có sẵn của khách hàng. Để khắc phục khả năng lọc nước của các dòng máy kém chất lượng cũng như đảm bảo lọc được nước ở các vùng ô nhiễm nặng thì hãng trang bị thêm lõi lọc siêu hấp thụ MOFs.</p>
                  <p>Cấu trúc của MOFs mắt thường sẽ không nhìn được, nhưng ở góc độ phân tử có thể thấy có nhiều lỗ rỗng, diện tích bề mặt cực kỳ lớn nên có khả năng hấp thu các chất ô nhiễm có trong nước như kim loại nặng, hợp chất hữu cơ độc hại, loại bỏ những nguy cơ tiềm tàng gây ung thư như NH3, NH4… có trong nước (đây là các loại khí mà màng RO và các loại lõi khác chỉ ngăn được 50%).</p>
                  </span>
          <span id="readmore" type="button" class="blog__btn" onclick="myFunction()">Xem thêm</span>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Footer Section Begin -->
<jsp:include page="footer.jsp" />
