<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Form add product -->
<div class="container-fluid pt-4 px-4">
  <div class="bg-light rounded h-100 p-4">
    <h6 class="mb-4">Thêm Sản Phẩm</h6>
    <form action="submit_product.php" method="POST" enctype="multipart/form-data">
      <!-- ID and Category Type in the same row -->
      <div class="mb-3 row">
        <div class="col-md-6">
          <label for="productID" class="form-label">ID Sản Phẩm</label>
          <input type="text" class="form-control" id="productID" name="productID" required>
        </div>
        <div class="col-md-6">
          <label for="productCategoryType" class="form-label">Loại Sản Phẩm</label>
          <input type="text" class="form-control" id="productCategoryType" name="productCategoryType" required>
        </div>
      </div>

      <!-- Product Name -->
      <div class="mb-3">
        <label for="productName" class="form-label">Tên Sản Phẩm</label>
        <input type="text" class="form-control" id="productName" name="productName" required>
      </div>

      <!-- Price and Brand in the same row -->
      <div class="mb-3 row">
        <div class="col-md-6">
          <label for="productPrice" class="form-label">Giá</label>
          <input type="number" class="form-control" id="productPrice" name="productPrice" required>
        </div>
        <div class="col-md-6">
          <label for="productBrand" class="form-label">Thương Hiệu</label>
          <input type="text" class="form-control" id="productBrand" name="productBrand" required>
        </div>
      </div>

      <!-- Quantity and Stock in the same row -->
      <div class="mb-3 row">
        <div class="col-md-6">
          <label for="productQuantity" class="form-label">Số Lượng</label>
          <input type="number" class="form-control" id="productQuantity" name="productQuantity" required>
        </div>
        <div class="col-md-6">
          <label for="productStock" class="form-label">Tồn Kho</label>
          <input type="number" class="form-control" id="productStock" name="productStock" required>
        </div>
      </div>

      <!-- Description -->
      <div class="mb-3">
        <label for="productDescription" class="form-label">Mô Tả</label>
        <textarea class="form-control" id="productDescription" name="productDescription" rows="4"
                  required></textarea>
      </div>

      <!-- Image Upload (Multiple Images) -->
      <div class="mb-3">
        <label for="productImages" class="form-label">Hình Ảnh (Chọn nhiều ảnh)</label>
        <input type="file" class="form-control" id="productImages" name="productImages[]" accept="image/*" multiple
               required>
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


