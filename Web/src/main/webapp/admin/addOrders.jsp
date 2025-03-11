<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Form Add Order Start -->
<div class="container-fluid pt-4 px-4">
  <div class="bg-light rounded h-100 p-4">
    <h6 class="mb-4">Thêm đơn hàng</h6>
    <form action="submit_order.php" method="POST">

      <!-- ID Đơn hàng -->
      <div class="mb-3">
        <label for="orderID" class="form-label">ID đơn hàng</label>
        <input type="text" class="form-control" id="orderID" name="orderID" required>
      </div>

      <!-- Tên khách hàng -->
      <div class="mb-3">
        <label for="orderName" class="form-label">Tên khách hàng</label>
        <input type="text" class="form-control" id="orderName" name="orderName" required>
      </div>

      <!-- Địa chỉ -->
      <div class="mb-3">
        <label for="orderAddress" class="form-label">Địa chỉ</label>
        <input type="text" class="form-control" id="orderAddress" name="orderAddress" required>
      </div>

      <!-- Sản phẩm -->
      <div class="mb-3">
        <label for="orderProducts" class="form-label">Sản phẩm</label>
        <input type="text" class="form-control" id="orderProducts" name="orderProducts" required>
      </div>

      <!-- Ngày đặt hàng -->
      <div class="mb-3">
        <label for="orderDate" class="form-label">Ngày đặt hàng</label>
        <input type="text" class="form-control" id="orderDate" name="orderDate" required>
      </div>

      <!-- Mã khuyến mãi -->
      <div class="mb-3">
        <label for="orderPromotionCode" class="form-label">Mã khuyến mãi</label>
        <input type="text" class="form-control" id="orderPromotionCode" name="orderPromotionCode" required>
      </div>

      <!-- Số lượng -->
      <div class="mb-3">
        <label for="orderQuantity" class="form-label">Số lượng</label>
        <input type="text" class="form-control" id="orderQuantity" name="orderQuantity" required>
      </div>

      <!-- Submit Button -->
      <div class="text-center">
        <button type="submit" class="btn btn-primary">Lưu lại</button>
      </div>
    </form>
  </div>
</div>

<!-- Form Add Order end -->

<jsp:include page="/admin/footer.jsp" />


