package com.example.web.controller;

import com.example.web.model.CartItem;
import com.example.web.model.Products;
import com.example.web.model.ShoppingCart;
import com.example.web.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "ShoppingCartController", value = "/ShoppingCartController")
public class ShoppingCartController extends HttpServlet {
  ProductService productService = new ProductService();

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    processRequest(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    processRequest(request, response);
  }

  private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession();
    ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shop-cart");

    if (shoppingCart == null) {
      shoppingCart = new ShoppingCart();
      session.setAttribute("shop-cart", shoppingCart);
    }

    String action = request.getParameter("action");
    if (action == null) {
      response.sendRedirect("shop-cart.jsp");
      return;
    }

    try {
      switch (action) {
        case "add":
          addProductToCart(request, shoppingCart);
          break;
        case "delete":
          deleteProductFromCart(request, shoppingCart);
          break;
        case "put":
          updateProductQuantity(request, shoppingCart);
          break;
        default:
          throw new IllegalArgumentException("Invalid action: " + action);
      }
    } catch (NumberFormatException e) {
      response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID or quantity.");
    } catch (Exception e) {
      response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred: " + e.getMessage());
    }

    response.sendRedirect("shop-cart.jsp");
  }

  private void addProductToCart(HttpServletRequest request, ShoppingCart shoppingCart) {
    String idParam = request.getParameter("id");
    if (idParam == null || idParam.isEmpty()) {
      throw new IllegalArgumentException("Product ID is missing.");
    }

    int id = Integer.parseInt(idParam);
    Products product = productService.findById(id);

    if (product != null) {
      CartItem cartItem = new CartItem(product, 1);
      shoppingCart.add(cartItem);
    } else {
      throw new IllegalArgumentException("Product not found with ID: " + id);
    }
  }

  private void deleteProductFromCart(HttpServletRequest request, ShoppingCart shoppingCart) {
    String idParam = request.getParameter("id");
    if (idParam == null || idParam.isEmpty()) {
      throw new IllegalArgumentException("Product ID is missing.");
    }

    int id = Integer.parseInt(idParam);
    shoppingCart.remove(id);
  }

  private void updateProductQuantity(HttpServletRequest request, ShoppingCart shoppingCart) {
    String idParam = request.getParameter("id");
    String quantityParam = request.getParameter("quantity");

    if (idParam == null || idParam.isEmpty() || quantityParam == null || quantityParam.isEmpty()) {
      throw new IllegalArgumentException("Product ID or quantity is missing.");
    }

    int id = Integer.parseInt(idParam);
    int quantity = Integer.parseInt(quantityParam);

    if (quantity <= 0) {
      shoppingCart.remove(id);
    } else {
      shoppingCart.update(id, quantity);
    }
    shoppingCart.updateCart();
  }
}
