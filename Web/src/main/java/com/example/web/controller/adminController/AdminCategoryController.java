package com.example.web.controller.adminController;

import com.example.web.model.Category;
import com.example.web.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminCategoryController", value = "/admin/listCategories")
public class AdminCategoryController extends HttpServlet {
  ProductService productService = new ProductService();

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    List<Category> categories = productService.getCategoryForAdmin();
    request.setAttribute("categories", categories);
    request.getRequestDispatcher("/admin/listCategories.jsp").forward(request, response);
  }
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }
}
