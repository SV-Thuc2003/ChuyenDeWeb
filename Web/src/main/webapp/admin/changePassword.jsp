<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 1/10/2025
  Time: 2:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Lọc Xanh - Đổi mật khẩu</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <!-- link bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- font sowesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
</head>
<style>
  #spinner {
    opacity: 0;
    visibility: hidden;
    transition: opacity .5s ease-out, visibility 0s linear .5s;
    z-index: 99999;
  }

  #spinner.show {
    transition: opacity .5s ease-out, visibility 0s linear 0s;
    visibility: visible;
    opacity: 1;
  }
  a{
    text-decoration: none;
    color: red;
  }
  .btn {
    transition: .5s;

  }
  .btn.btn-primary {
    color: #FFFFFF;
    background-color: red;
  }

</style>
<body>
  <div class="container-xxl position-relative bg-white d-flex p-0">
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
      <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>
    <!-- Spinner End -->

    <!-- Sign In Start -->
    <div class="container-fluid">
      <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
        <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
          <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
            <div class="text-center">
              <h3>Đổi mật khẩu</h3>
            </div>
            <form action="changePassword" method="post">
              <h6 style="color: red"><%=request.getAttribute("notification")!=null?request.getAttribute("notification"):""%></h6>
              <div class="form-floating mb-3">
                <input type="password" class="form-control" id="currentPassword" name="currentPassword" placeholder="Mật khẩu cũ"required>
                <label for="currentPassword">Mật khẩu cũ</label>
              </div>
              <div class="form-floating mb-4">
                <input type="password" class="form-control" id="newPassword" name="newPassword" placeholder="Mật khẩu mới" required>
                <label for="newPassword">Mật Khẩu mới</label>
              </div>
              <div class="form-floating mb-4">
                <input type="password" class="form-control" id="repeatPassword" name="repeatPassword" placeholder="Nhập lại mật khẩu" required>
                <label for="repeatPassword">Nhập lại mật khẩu</label>
              </div>
              <button type="submit" class="btn btn-primary py-3 w-100 mb-4">Đổi mật khẩu</button>
            </form>
            </div>
          </div>
        </div>
      </div>
    </div>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- Template Javascript -->
<script>
  var spinner = function () {
    setTimeout(function () {
      if ($('#spinner').length > 0) {
        $('#spinner').removeClass('show');
      }
    }, 1);
  };
  spinner();
</script>
</body>
</html>
