<%--
Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/27/2024
  Time: 1:24 AM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page="header.jsp"/>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__links">
                    <a href="<%= request.getContextPath() %>index.jsp"><i class="fa fa-home"></i>TRANG CHỦ</a>
                    <span>SẢN PHẨM</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<div class="filter__item filter__item__page__detail">
    <div class="row">
        <div class="col-lg-4 col-md-5">
            <div class="filter__sort ">
                <span>Sắp Xếp</span>
                <form action="<%= request.getContextPath() %>/shop.jsp" method="get" id="sortingForm">
                    <label>
                        <!-- Giữ page hiện tại -->
                        <input type="hidden" name="page" value="${page}"/>

                        <select id="sortBySelect" onchange="applyFiltersSort()">
                            <option value="default">Mặc định</option>
                            <option value="price_desc" ${select == 'price_desc' ? 'selected' : ''}>Giá từ cao tới thấp
                            </option>
                            <option value="price_asc" ${select == 'price_asc' ? 'selected' : ''}>Giá từ thấp đến cao
                            </option>
                        </select>
                    </label>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="shop__sidebar">
                    <div class="sidebar__categories">
                        <div class="section-title">
                            <h4>Phân Loại</h4>
                        </div>
                        <div class="categories__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">Lọc nước RO</a>
                                    </div>
                                    <div id="collapseOne" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <!-- Lưu thông tin lọc vào các thuộc tính data- để dễ dàng truy cập trong JS -->
                                                <li><a href="javascript:void(0);" class="filter" data-category="1"
                                                       data-brand="" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Tất cả</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="1"
                                                       data-brand="Sunhouse" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Sunhouse</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="1"
                                                       data-brand="Toshiba" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Toshiba</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="1"
                                                       data-brand="Kangaroo" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Kangaroo</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="1"
                                                       data-brand="Karofi" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Karofi</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseTwo">Nóng - Nguội - Lạnh</a>
                                    </div>
                                    <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <ul>
                                                    <li><a href="javascript:void(0);" class="filter" data-category="2"
                                                           data-brand="" data-minPrice="${minPrice}"
                                                           data-maxPrice="${maxPrice}" data-select="${select}">Tất
                                                        cả</a></li>
                                                    <li><a href="javascript:void(0);" class="filter" data-category="2"
                                                           data-brand="Sunhouse" data-minPrice="${minPrice}"
                                                           data-maxPrice="${maxPrice}"
                                                           data-select="${select}">Sunhouse</a></li>
                                                    <li><a href="javascript:void(0);" class="filter" data-category="2"
                                                           data-brand="Toshiba" data-minPrice="${minPrice}"
                                                           data-maxPrice="${maxPrice}"
                                                           data-select="${select}">Toshiba</a></li>
                                                    <li><a href="javascript:void(0);" class="filter" data-category="2"
                                                           data-brand="Kangaroo" data-minPrice="${minPrice}"
                                                           data-maxPrice="${maxPrice}"
                                                           data-select="${select}">Kangaroo</a></li>
                                                    <li><a href="javascript:void(0);" class="filter" data-category="2"
                                                           data-brand="Karofi" data-minPrice="${minPrice}"
                                                           data-maxPrice="${maxPrice}"
                                                           data-select="${select}">Karofi</a></li>
                                                </ul>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">Âm tủ - Để bàn</a>
                                    </div>
                                    <div id="collapseThree" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li><a href="javascript:void(0);" class="filter" data-category="3"
                                                       data-brand="" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Tất cả</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="3"
                                                       data-brand="Sunhouse" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Sunhouse</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="3"
                                                       data-brand="AOSmith" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">AOSmith</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="3"
                                                       data-brand="Kangaroo" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Kangaroo</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="3"
                                                       data-brand="Karofi" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Karofi</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFour">Lọc điện giải ion kiềm</a>
                                    </div>
                                    <div id="collapseFour" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li><a href="javascript:void(0);" class="filter" data-category="4"
                                                       data-brand="" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Tất cả</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="4"
                                                       data-brand="ROBOT" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">ROBOT</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="4"
                                                       data-brand="KangenLeveLuk" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Kangen
                                                    LeveLuk</a></li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="4"
                                                       data-brand="Panasonic" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">Panasonic</a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="filter" data-category="4"
                                                       data-brand="IonFarms" data-minPrice="${minPrice}"
                                                       data-maxPrice="${maxPrice}" data-select="${select}">IonFarms</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar__filter">
                        <div class="section-title">
                            <h4>Chọn mức giá phù hợp</h4>
                        </div>
                        <div class="filter-range-wrap">
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                 data-min="0" data-max="200000000"></div>
                            <div class="range-slider">
                                <div class="price-input">
                                    <p>Giá:</p>
                                    <input type="text" id="minamount" readonly>
                                    <input type="text" id="maxamount" readonly>
                                </div>
                            </div>
                        </div>
                        <button id="filter-price-btn">Lọc</button>
                    </div>
                    <div class="sidebar__sizes">
                        <div class="section-title">
                            <h4>Chế Độ Nước</h4>
                        </div>
                        <div class="size__list">
                            <label>
                                <input type="checkbox" id="feature-hot"
                                       <c:if test="${fn:contains(param.features, 'hot')}">checked</c:if> /> Nước nóng
                                <span class="checkmark"></span>
                            </label>
                            <label>
                                <input type="checkbox" id="feature-cold"
                                       <c:if test="${fn:contains(param.features, 'cold')}">checked</c:if> /> Nước lạnh
                                <span class="checkmark"></span>
                            </label>
                            <label>
                                <input type="checkbox" id="feature-plain"
                                       <c:if test="${fn:contains(param.features, 'plain')}">checked</c:if> /> Nước
                                thường
                                <span class="checkmark"></span>
                            </label>
                            <label>
                                <input type="checkbox" id="feature-warm"
                                       <c:if test="${fn:contains(param.features, 'warm')}">checked</c:if> /> Nước ấm
                                <span class="checkmark"></span>
                            </label>
                        </div>
                    </div>
                    <div class="sidebar__color">
                        <div class="section-title">
                            <h4>Tiện Ích</h4>
                        </div>
                        <div class="size__list color__list">
                            <label>
                                <input type="checkbox" id="feature-energy"
                                       <c:if test="${fn:contains(param.features, 'energy-saving')}">checked</c:if> />Tiết
                                kiệm điện
                                <span class="checkmark"></span>
                            </label>
                            <label>
                                <input type="checkbox" id="feature-lock"
                                       <c:if test="${fn:contains(param.features, 'child-lock')}">checked</c:if> /> Khóa
                                an toàn nước nóng
                                <span class="checkmark"></span>
                            </label>
                            <label>
                                <input type="checkbox" id="feature-low"
                                       <c:if test="${fn:contains(param.features, 'low')}">checked</c:if> />Chỉ báo mực
                                nước thấp
                                <span class="checkmark"></span>
                            </label>
                            <label>
                                <input type="checkbox" id="feature-temp"
                                       <c:if test="${fn:contains(param.features, 'temp')}">checked</c:if> />Đèn báo
                                nhiệt độ nước
                                <span class="checkmark"></span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-9">
                <div id="product-list" class="row" style="margin-left: 20px">
                    <!-- Product List -->
                    <c:forEach var="product" items="${productsList}">
                        <div class="col-lg-4 col-md-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg">
                                    <img src="${product.image_url}" alt="${product.name}">
                                    <ul class="product__hover">
                                        <li><a href="${product.image_url}" class="image-popup"><span
                                                class="arrow_expand"></span></a></li>
                                        <li><a href="wish_lists.jsp"><span class="icon_heart_alt"></span></a></li>
                                        <li><a href="ShoppingCartController?action=add&id=${product.id}"><span
                                                class="icon_bag_alt"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="/product/detail/${product.id}">${product.name}</a></h6>
                                    <%--                  <div class="rating">--%>
                                    <%--                    <c:forEach var="star" begin="1" end="${product.rating}">--%>
                                    <%--                      <i class="fa fa-star"></i>--%>
                                    <%--                    </c:forEach>--%>
                                    <%--                  </div>--%>
                                <div class="product__price"><f:formatNumber value="${product.price}"/></div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-lg-12 text-center">
                        <div class="pagination__option" style="margin-top: 20px">
                            <c:if test="${startPage > 1}">
                                <a href="?page=${startPage - 1}&minPrice=${minPrice}&maxPrice=${maxPrice}&select=${select}"
                                   class="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                            </c:if>
                            <c:forEach var="i" begin="${startPage}" end="${endPage}">
                                <a href="?page=${i}&minPrice=${minPrice}&maxPrice=${maxPrice}&select=${select}"
                                   class="${page == i ? 'active' : ''}">${i}</a>
                            </c:forEach>
                            <c:if test="${endPage < totalPages}">
                                <a href="?page=${endPage + 1}&minPrice=${minPrice}&maxPrice=${maxPrice}&select=${select}"
                                   class="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/footer.jsp"/>
<script>
    function applyFiltersSort() {
        const form = document.getElementById("sortingForm");
        const selectElement = document.getElementById("sortBySelect");
        const url = new URL(window.location.href);

        // Nếu giá trị của select rỗng, xóa tham số khỏi URL
        if (!selectElement.value) {
            url.searchParams.delete("select");
        } else {
            // Nếu có giá trị, thêm hoặc cập nhật tham số
            url.searchParams.set("select", selectElement.value);
        }
        // Đặt page về 1 khi thay đổi sắp xếp
        url.searchParams.set("page", 1);

        //   Chuyển hướng
        window.location.href = url.toString();
    }
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/magnific-popup@1.1.0/dist/jquery.magnific-popup.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-countdown@2.2.0/dist/jquery.countdown.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/slicknav@1.0.6/dist/jquery.slicknav.min.js"></script>

<script src="${pageContext.request.contextPath}/js/main.js"></script>

<!-- Contact Section End -->
</body>
</html>
