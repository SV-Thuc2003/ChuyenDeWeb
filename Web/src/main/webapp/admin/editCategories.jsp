<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!--Form add categories-->
<div class="container-fluid pt-4 px-4">
  <div class="bg-light rounded h-100 p-4">
    <h6 class="mb-4">Chỉnh sửa danh Mục Sản Phẩm</h6>
    <form action="submit_product_category.php" method="POST">
      <!-- ID -->
      <div class="mb-3">
        <label for="categoryID" class="form-label">ID Danh Mục</label>
        <input type="text" class="form-control" id="categoryID" name="categoryID" value="1" required>
      </div>

      <!-- Type -->
      <div class="mb-3">
        <label for="categoryType" class="form-label">Loại</label>
        <input type="text" class="form-control" id="categoryType" name="categoryType" value="Lọc nước RO" required>
      </div>

      <!-- Description -->
      <div class="mb-3">
        <label for="categoryDescription" class="form-label">Mô Tả</label>
        <textarea class="form-control" id="categoryDescription" name="categoryDescription" rows="4" required>Máy lọc nước RO (Reverse Osmosis) là một loại thiết bị sử dụng công nghệ thấu ngược để lọc sạch các tạp chất và vi khuẩn có trong nước</textarea>
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


