<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<!-- Table Start -->
<div class="container-fluid pt-4 px-4">
  <div class="col-12">
    <div class="bg-light rounded h-100 p-4">
      <h6 class="mb-4">Danh sách danh mục sản phẩm</h6>
      <div class="table-responsive">
        <table class="table">
          <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Loại</th>
            <th scope="col">Mô tả</th>
            <th scope="col">Số lượng</th>
            <th scope="col">Tùy chọn</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach var="category" items="${categories}">
            <tr>
              <th scope="row">${category.id}</th>
              <td>${category.name}</td>
              <td>${category.description}</td>
              <td>${category.quantity}</td>
              <td>
                <!-- Cột Tùy chọn với các icon -->
                <a href="editCategories.html" class="text-warning me-2"><i class="fa fa-edit"></i></a>
                <a href="javascript:void(0);" class="text-danger delete-icon" data-id="1">
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


