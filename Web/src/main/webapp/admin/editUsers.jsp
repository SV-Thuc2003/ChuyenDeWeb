<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Form add User -->
<div class="container-fluid pt-4 px-4">
  <div class="bg-light rounded h-100 p-4">
    <h6 class="mb-4">Chỉnh sửa người dùng</h6>
    <form action="submit_user.php" method="POST">

      <!-- ID và Họ Tên trong cùng một hàng -->
      <div class="mb-3 row">
        <div class="col-md-6">
          <label for="userID" class="form-label">ID Người Dùng</label>
          <input type="text" class="form-control" id="userID" name="userID" value="1" required>
        </div>
        <div class="col-md-6">
          <label for="fullName" class="form-label">Họ và Tên</label>
          <input type="text" class="form-control" id="fullName" name="fullName" value="Nguyễn Thị Ly" required>
        </div>
      </div>

      <!-- Email và Số điện thoại trong cùng một hàng -->
      <div class="mb-3 row">
        <div class="col-md-6">
          <label for="userEmail" class="form-label">Email</label>
          <input type="email" class="form-control" id="userEmail" name="userEmail" value="lili@gmail.com" required>
        </div>
        <div class="col-md-6">
          <label for="userPhone" class="form-label">Số Điện Thoại</label>
          <input type="tel" class="form-control" id="userPhone" name="userPhone" value="0912345678" required>
        </div>
      </div>

      <!-- Tên Người Dùng và Mật Khẩu trong cùng một hàng -->
      <div class="mb-3 row">
        <div class="col-md-6">
          <label for="username" class="form-label">Tên Người Dùng</label>
          <input type="text" class="form-control" id="username" name="username" value="lili" required>
        </div>
        <div class="col-md-6">
          <label for="userPassword" class="form-label">Mật Khẩu</label>
          <input type="password" class="form-control" id="userPassword" name="userPassword" value="********"
                 required>
        </div>
      </div>

      <!-- Địa Chỉ -->
      <div class="mb-3">
        <label for="userAddress" class="form-label">Địa Chỉ</label>
        <input type="text" class="form-control" id="userAddress" name="userAddress" value="Bình Thuận" required>
      </div>

      <!-- Vai Trò -->
      <div class="mb-3">
        <label for="userRole" class="form-label">Vai Trò</label>
        <select class="form-control" id="userRole" name="userRole" required>
          <option value="admin">Admin</option>
          <option value="user">Khách hàng</option>
        </select>
      </div>

      <!-- Nút Lưu -->
      <div class="text-center">
        <button type="submit" class="btn btn-primary">Lưu lại</button>
      </div>

    </form>
  </div>
</div>
<jsp:include page="/admin/footer.jsp" />


