<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Form add product -->
<div class="container-fluid pt-4 px-4">
  <div class="bg-light rounded h-100 p-4">
    <h6 class="mb-4">Chỉnh sửa Sản Phẩm</h6>
    <form action="submit_product.php" method="POST" enctype="multipart/form-data">
      <!-- ID and Category Type in the same row -->
      <div class="mb-3 row">
        <div class="col-md-6">
          <label for="productID" class="form-label">ID Sản Phẩm</label>
          <input type="text" class="form-control" id="productID" name="productID" value="1" required>
        </div>
        <div class="col-md-6">
          <label for="productCategoryType" class="form-label">Loại Sản Phẩm</label>
          <input type="text" class="form-control" id="productCategoryType" name="productCategoryType" value="Lọc nuớc RO" required>
        </div>
      </div>

      <!-- Product Name -->
      <div class="mb-3">
        <label for="productName" class="form-label">Tên Sản Phẩm</label>
        <input type="text" class="form-control" id="productName" name="productName" value="Máy lọc nước SHA76222KL" required>
      </div>

      <!-- Price and Brand in the same row -->
      <div class="mb-3 row">
        <div class="col-md-6">
          <label for="productPrice" class="form-label">Giá</label>
          <input type="number" class="form-control" id="productPrice" name="productPrice" value="6390000" required>
        </div>
        <div class="col-md-6">
          <label for="productBrand" class="form-label">Thương Hiệu</label>
          <input type="text" class="form-control" id="productBrand" name="productBrand" value="Sunshouse" required>
        </div>
      </div>

      <!-- Quantity and Stock in the same row -->
      <div class="mb-3 row">
        <div class="col-md-6">
          <label for="productQuantity" class="form-label">Số Lượng</label>
          <input type="number" class="form-control" id="productQuantity" name="productQuantity" value="5" required>
        </div>
        <div class="col-md-6">
          <label for="productStock" class="form-label">Tồn Kho</label>
          <input type="number" class="form-control" id="productStock" name="productStock" value="10" required>
        </div>
      </div>

      <!-- Description -->
      <div class="mb-3">
        <label for="productDescription" class="form-label">Mô Tả</label>
        <textarea class="form-control" id="productDescription" name="productDescription" rows="4" required>Máy lọc nước SHA76222KL là sản phẩm tiên tiến ứng dụng công nghệ lọc RO hiện đại, loại bỏ hiệu quả các tạp chất, vi khuẩn, và kim loại nặng, mang lại nguồn nước tinh khiết đạt chuẩn. Với thiết kế sang trọng, phù hợp mọi không gian gia đình, sản phẩm còn tích hợp các tính năng thông minh giúp tiết kiệm nước và điện năng tối ưu. SHA76222KL không chỉ đảm bảo sức khỏe cho gia đình bạn mà còn là giải pháp bảo vệ môi trường bền vững. Lựa chọn hoàn hảo cho cuộc sống hiện đại và tiện nghi</textarea>
      </div>

      <!-- Image Upload (Multiple Images) -->
      <div class="mb-3">
        <label for="productImages" class="form-label">Hình Ảnh (Chọn nhiều ảnh)</label>
        <input type="file" class="form-control" id="productImages" name="productImages[]" accept="image/*" multiple required>
      </div>
      <div class="mb-3">
        <label class="form-label">Hình Ảnh Hiện Tại</label>
        <div class="d-flex flex-wrap" id="existingImages">
          <img src="uploads/image1.jpg" alt="Hình ảnh 1" class="img-thumbnail m-2" style="width: 120px; height: 120px;">
          <img src="uploads/image2.jpg" alt="Hình ảnh 2" class="img-thumbnail m-2" style="width: 120px; height: 120px;">
          <img src="uploads/image3.jpg" alt="Hình ảnh 3" class="img-thumbnail m-2" style="width: 120px; height: 120px;">
        </div>
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


