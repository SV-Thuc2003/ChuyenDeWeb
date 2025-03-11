<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Table Start -->
<div class="container-fluid pt-4 px-4">
  <div class="col-12">
    <div class="bg-light rounded h-100 p-4">
      <h6 class="mb-4">Danh sách người dùng</h6>
      <div class="table-responsive">
        <table class="table">
          <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Tên</th>
            <th scope="col">Email</th>
            <th scope="col">SĐT</th>
            <th scope="col">Tên người dùng</th>
            <th scope="col">Mật khẩu</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Vai trò</th>
            <th scope="col">Ngày tạo</th>
            <th scope="col">Ngày cập nhật</th>
            <th scope="col">Tùy chọn</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach var="user" items="${users}">
            <tr>
              <th scope="row">${user.id}</th>
              <td>${user.name}</td>
              <td>${user.email}</td>
              <td>${user.phone}</td>
              <td>${user.username}</td>
              <td>${user.password}</td>
              <td>${user.address}</td>
              <td>${user.role}</td>
              <td>${user.create_at}</td>
              <td>${user.update_at}</td>
              <td>
                <!-- Cột Tùy chọn với các icon -->
                <a href="editUsers.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
                <a href="javascript:void(0);" class="text-danger delete-icon" data-id="${user.id}">
                  <i class="fa fa-trash"></i>
                </a>
              </td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
<!-- Table End -->
<jsp:include page="/admin/footer.jsp" />


