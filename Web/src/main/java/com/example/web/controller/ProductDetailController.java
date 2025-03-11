package com.example.web.controller;

import com.example.web.connector.JdbiConnect;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletRequest;

import com.example.web.dao.ProductDao;
import com.example.web.model.Products;
import com.example.web.service.ProductService;


import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ProductDetailController", value = "/ProductDetailController")
public class ProductDetailController extends HttpServlet {
  private ProductDao productDao = new ProductDao();

  public ProductDetailController() throws SQLException {
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String idParam = request.getParameter("id");
    if (idParam != null) {
      try {
        int productId = Integer.parseInt(idParam);
        Products product = productDao.findById(productId);

        if (product != null) {
          request.setAttribute("product", product);
          request.getRequestDispatcher("product-detail.jsp").forward(request, response);
        } else {
          response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
        }
      } catch (NumberFormatException e) {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID format");
      }
    } else {
      response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Product ID is required");
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String action = request.getParameter("action");

    if ("add_to_cart".equals(action)) {
      // Logic thêm sản phẩm vào giỏ hàng
      int productId = Integer.parseInt(request.getParameter("id"));
      request.getSession().setAttribute("cart", productId); // Placeholder cho giỏ hàng
      response.sendRedirect("shop-cart.jsp"); // Điều hướng đến trang giỏ hàng

    } else if ("add_to_wishlist".equals(action)) {
      // Logic thêm sản phẩm vào wishlist
      int productId = Integer.parseInt(request.getParameter("id"));
      request.getSession().setAttribute("wishlist", productId); // Placeholder cho wishlist
      response.sendRedirect("wish_list.jsp"); // Điều hướng đến trang wishlist

    } else if ("buy_now".equals(action)) {
      // Logic xử lý mua ngay
      int productId = Integer.parseInt(request.getParameter("id"));
      response.sendRedirect("checkout.jsp?id=" + productId); // Điều hướng đến trang thanh toán

    } else {
      response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
    }
  }
}

