<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!--Form add categories-->
<div class="container-fluid pt-4 px-4">
  <div class="bg-light rounded h-100 p-4">
    <h6 class="mb-4">Thêm mã khuyến mãi</h6>
    <form action="submit_promotion.php" method="POST">

      <!-- ID Khuyến mãi -->
      <div class="mb-3">
        <label for="promotionID" class="form-label">ID Khuyến mãi</label>
        <input type="text" class="form-control" id="promotionID" name="promotionID" required>
      </div>

      <!-- Mức giảm -->
      <div class="mb-3">
        <label for="discountAmount" class="form-label">Mức giảm</label>
        <input type="text" class="form-control" id="discountAmount" name="discountAmount" required>
      </div>

      <!-- Số lượng -->
      <div class="mb-3">
        <label for="quantity" class="form-label">Số lượng</label>
        <input type="text" class="form-control" id="quantity" name="quantity" required>
      </div>

      <!-- Mô Tả -->
      <div class="mb-3">
        <label for="promotionDescription" class="form-label">Mô Tả</label>
        <textarea class="form-control" id="promotionDescription" name="promotionDescription" rows="4" required></textarea>
      </div>

      <!-- Submit Button -->
      <div class="text-center">
        <button type="submit" class="btn btn-primary">Lưu lại</button>
      </div>
    </form>
  </div>
</div>
<!-- form end -->

<jsp:include page="/admin/footer.jsp" />


