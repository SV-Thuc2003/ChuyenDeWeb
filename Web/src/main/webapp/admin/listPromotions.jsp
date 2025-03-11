<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Table Start -->
<div class="container-fluid pt-4 px-4">
  <div class="col-12">
    <div class="bg-light rounded h-100 p-4">
      <h6 class="mb-4">Danh sách mã khuyến mãi</h6>
      <div class="table-responsive">
        <table class="table">
          <thead>
          <tr>
            <th scope="col">Mã giảm giá</th>
            <th scope="col">Mức giảm</th>
            <th scope="col">Mô tả</th>
            <th scope="col">Số lượng</th>
            <th scope="col">Còn lại</th>
            <th scope="col">Tùy chọn</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <th scope="row">MAGG10</th>
            <td>10%</td>
            <td>Giảm 10% cho mỗi hóa đơn tối thiểu 200.000đ</td>
            <td>20</td>
            <td>10</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="editPromotions.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
              <a href="javascript:void(0);" class="text-danger delete-icon" data-id="1">
                <i class="fa fa-trash"></i>
              </a>
            </td>
          </tr>
          <tr>
            <th scope="row">MAGG30</th>
            <td>30%</td>
            <td>Giảm 30% cho mỗi hóa đơn tối thiểu 500.000đ</td>
            <td>20</td>
            <td>0</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="editPromotions.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
              <a href="javascript:void(0);" class="text-danger delete-icon" data-id="1">
                <i class="fa fa-trash"></i>
              </a>
            </td>
          </tr>
          <tr>
            <th scope="row">MAGGSALE</th>
            <td>200.000đ</td>
            <td>Giảm giá 200.000đ cho hóa đơn tối thiểu 400.000đ</td>
            <td>5</td>
            <td>0</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="editPromotions.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
              <a href="javascript:void(0);" class="text-danger delete-icon" data-id="1">
                <i class="fa fa-trash"></i>
              </a>
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
<!-- Table End -->
<jsp:include page="/admin/footer.jsp" />


