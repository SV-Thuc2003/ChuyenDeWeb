package com.example.web.controller.adminController;

import com.example.web.model.User;
import com.example.web.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminUserController", value = "/admin/listUsers")
public class AdminUserController extends HttpServlet {
  UserService userService = new UserService();

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    List<User> users = userService.getAllUserForAdmin();
    request.setAttribute("users", users);
    request.getRequestDispatcher("/admin/listUsers.jsp").forward(request, response);
  }
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }
}
