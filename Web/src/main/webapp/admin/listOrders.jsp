<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Table Start -->
<div class="container-fluid pt-4 px-4">
  <div class="col-12">
    <div class="bg-light rounded h-100 p-4">
      <h6 class="mb-4">Danh sách đơn hàng</h6>
      <div class="table-responsive">
        <table class="table">
          <thead>
          <tr>
            <th scope="col">Mã đơn hàng</th>
            <th scope="col">Tên khách hàng</th>
            <th scope="col">Ngày đặt hàng</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Trạng thái đơn hàng</th>
            <th scope="col">Ghi chú</th>
            <th scope="col">Thành tiền</th>
            <th scope="col">Tùy chọn</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <th scope="row">DH001</th>
            <td>Xuân</td>
            <td>15/11/2024</td>
            <td>Cư xá E, Đại học Nông Lâm TP.HCM</td>
            <td>Đã giao</td>
            <td>Lầu 4</td>
            <td>15.000.000 VNĐ</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="editOrder.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
              <a href="javascript:void(0);" class="text-danger delete-icon" data-id="1">
                <i class="fa fa-trash"></i>
              </a>
            </td>
          </tr>
          <tr>
            <th scope="row">DH002</th>
            <td>Quốc</td>
            <td>15/11/2024</td>
            <td>Thanh Vĩnh Đông, Châu Thành, Long An</td>
            <td>Đã giao</td>
            <td></td>
            <td>25.000.000 VNĐ</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="editOrder.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
              <a href="javascript:void(0);" class="text-danger delete-icon" data-id="1">
                <i class="fa fa-trash"></i>
              </a>
            </td>
          </tr>
          <tr>
            <th scope="row">DH003</th>
            <td>Nguyễn Ly</td>
            <td>28/11/2024</td>
            <td>Chợ nhỏ Nông Lâm, Đông Hòa, Dĩ An, Bình Dương</td>
            <td>Đang vận chuyển</td>
            <td></td>
            <td>10.000.000 VNĐ</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="editOrder.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
              <a href="javascript:void(0);" class="text-danger delete-icon" data-id="1">
                <i class="fa fa-trash"></i>
              </a>
            </td>
          </tr>
          <tr>
            <th scope="row">DH004</th>
            <td>Luân</td>
            <td>28/11/2024</td>
            <td>Đường đất Nông Lâm, Đông Hòa, Dĩ An, Bình Dương</td>
            <td>Đang vận chuyển</td>
            <td>Trọ cuối đường</td>
            <td>12.000.000 VNĐ</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="editOrder.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
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


