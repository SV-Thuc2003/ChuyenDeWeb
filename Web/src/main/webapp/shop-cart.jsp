<%@ page import="com.example.web.model.ShoppingCart" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.web.model.CartItem" %>
<%@ page import="com.oracle.wls.shaded.org.apache.xpath.operations.Number" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Locale" %>

<jsp:include page="header.jsp" />
<%
  ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shop-cart");

  if (shoppingCart == null) {
    shoppingCart = new ShoppingCart(); // Khởi tạo giỏ hàng nếu chưa có
    session.setAttribute("shop-cart", shoppingCart); // Lưu vào session
  }
  List<CartItem> cartItems = shoppingCart.getCartItemList();
  NumberFormat numberFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));
%>
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__links">
          <a href="index.jsp"><i class="fa fa-home"></i> Trang chủ</a>
          <span>Giỏ hàng</span>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->

<!-- Shop Cart Section Begin -->
<section class="shop-cart spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="shop__cart__table">
          <table>
            <thead>
            <tr>
              <th>#</th>
              <th>Tên sản phẩm</th>
              <th>Giá</th>
              <th>Số lượng</th>
              <th>Thành tiền</th>
              <th></th>
            </tr>
            </thead>
            <tbody>
            <%
              if (cartItems.isEmpty()) {
            %>
            <tr>
              <td colspan="6" style="text-align: center;">Giỏ hàng của bạn đang trống.</td>
            </tr>
            <%
            } else {
              int count = 0;
              for (CartItem cartItem : cartItems) {
                count++;
            %>
            <tr>
              <td><%= count %></td>
              <td class="cart__product__item">
                <img src="<%= cartItem.getProduct().getImage_url() %>" alt="">
                <div class="cart__product__item__title">
                  <h6><%= cartItem.getProduct().getName() %></h6>
                </div>
              </td>
              <td class="cart__price"><%= numberFormat.format(cartItem.getProduct().getPrice()) %> VND</td>
              <td class="cart__quantity">
<%--                <div class="pro-qty">--%>
                  <input style="width: 50px; border: none" type="text" value="<%= cartItem.getQuantity() %>">
<%--                </div>--%>
              </td>
              <td class="cart__total"><%=numberFormat.format(cartItem.getTotalPrice())  %> VND</td>
              <td >
                <form action="ShoppingCartController" method="get">
                  <input type="hidden" name="action" value="put">
                  <input type="hidden" name="id" value="<%=cartItem.getProduct().getId()%>">
                  <input style="width: 150px; padding-left: 10px; padding-right: 10px" type="number" name="quantity" value="<%=cartItem.getQuantity()%>" min="0">
                  <button type="submit">Cập nhật</button>
                </form>

              </td>
              <td >
                <form action="ShoppingCartController" method="get">
                  <input type="hidden" name="action" value="delete">
                  <input type="hidden" name="id" value="<%=cartItem.getProduct().getId()%>">
                  <button type ="submit" class="icon_close"></button>
                </form>
              </td>
            </tr>
            <%
                }
              }
            %>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-6">
        <div class="cart__btn">
          <a href="<%=request.getContextPath()%>/shop">Tiếp tục mua hàng</a>
        </div>
      </div>


    </div>
    <div class="row">
      <div class="col-lg-6">
      </div>
      <div class="col-lg-4 offset-lg-2">
        <div class="cart__total__procced">
          <h6>Tổng tiền</h6>
          <ul>
            <li>Tổng cộng: <span><%=numberFormat.format(shoppingCart.getTotalBill())%></span></li>
          </ul>
          <a href="checkout.jsp" class="primary-btn">Tiến hành thanh toán</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Shop Cart Section End -->
<jsp:include page="footer.jsp" />
