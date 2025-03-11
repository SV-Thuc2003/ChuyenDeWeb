<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Table Start -->
<div class="container-fluid pt-4 px-4">
  <div class="col-12">
    <div class="bg-light rounded h-100 p-4">
      <h6 class="mb-4">Danh sách sản phẩm</h6>
      <div class="table-responsive">
        <table class="table">
          <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Loại</th>
            <th scope="col">Tên sản phẩm</th>
            <th scope="col">Giá</th>
            <th scope="col">Số Lượng</th>
            <th scope="col">Tồn kho</th>
            <th scope="col">Ngày tạo</th>
            <th scope="col">Ngày cập nhật</th>
            <th scope="col">Thương hiệu</th>
            <th scope="col">Tùy chọn</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Lọc nuớc RO</td>
            <td>Máy lọc nước SHA76222KL</td>
            <td>6.390.000đ</td>
            <td>5</td>
            <td>10</td>
            <td>17/11/2024</td>
            <td>17/11/2024</td>
            <td>Sunshouse</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="editProducts.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
              <a href="javascript:void(0);" class="text-danger delete-icon" data-id="1">
                <i class="fa fa-trash"></i>
              </a>
            </td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Nóng - Lạnh</td>
            <td>Máy lọc nước SHA76222KL</td>
            <td>6.390.000đ</td>
            <td>5</td>
            <td>10</td>
            <td>17/11/2024</td>
            <td>17/11/2024</td>
            <td>Sunshouse</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="link_to_edit" class="text-warning me-2"><i class="fa fa-edit"></i></a>
              <a href="javascript:void(0);" class="text-danger delete-icon" data-id="1">
                <i class="fa fa-trash"></i>
              </a>
            </td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Âm tủ - Để bàn</td>
            <td>Máy lọc nước SHA76222KL</td>
            <td>6.390.000đ</td>
            <td>5</td>
            <td>10</td>
            <td>17/11/2024</td>
            <td>17/11/2024</td>
            <td>Sunshouse</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="link_to_edit" class="text-warning me-2"><i class="fa fa-edit"></i></a>
              <a href="javascript:void(0);" class="text-danger delete-icon" data-id="1">
                <i class="fa fa-trash"></i>
              </a>
            </td>
          </tr>
          <tr>
            <th scope="row">4</th>
            <td>Lọc điện giải ion kiềm</td>
            <td>Máy lọc nước SHA76222KL</td>
            <td>6.390.000đ</td>
            <td>5</td>
            <td>10</td>
            <td>17/11/2024</td>
            <td>17/11/2024</td>
            <td>Sunshouse</td>
            <td>
              <!-- Cột Tùy chọn với các icon -->
              <a href="editProducts.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
              <a href="javascript:void(0);" id="" class="">
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


