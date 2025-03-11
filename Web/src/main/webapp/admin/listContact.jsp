<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Table Start -->
<div class="container-fluid pt-4 px-4">
  <div class="col-12">
    <div class="bg-light rounded h-100 p-4">
      <h6 class="mb-4">Danh sách phản hồi từ khách hàng</h6>
      <div class="table-responsive">
        <table class="table">
          <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Ngày</th>
            <th scope="col">Tên</th>
            <th scope="col">Email</th>
            <th scope="col">Tiêu đề</th>
            <th scope="col">Nội dung</th>
            <th scope="col">Tùy chọn</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach var="contact" items="${contacts}">
            <tr>
              <th scope="row">${contact.id}</th>
              <td>${contact.create_at}</td>
              <td>${contact.name}</td>
              <td>${contact.email}</td>
              <td>${contact.title}</td>
              <td>${contact.message}</td>
              <td>
                <a href="javascript:void(0);" class="text-danger delete-icon" data-id="${contact.id}">
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


