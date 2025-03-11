package com.example.web.controller;

import com.example.web.dao.UserDao;
import com.example.web.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "ChangePasswordController", value = {"/changePassword"})

public class ChangePasswordController extends HttpServlet {
  private final UserService userService;

  public ChangePasswordController() {
    this.userService = new UserService(new UserDao());
  }

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.getRequestDispatcher("/user/changePassword.jsp").forward(request, response);
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String currentPassword = request.getParameter("currentPassword");
    String newPassword = request.getParameter("newPassword");
    String repeatPassword = request.getParameter("repeatPassword");

    HttpSession session = request.getSession();
    if (session != null) {
      String email = (String) session.getAttribute("email");


      if (!newPassword.equals(repeatPassword)) {
        request.setAttribute("notification", "Mật khẩu mới phải trùng khớp nhau!");
        request.getRequestDispatcher("/user/changePassword.jsp").forward(request, response);
        return;
      }
      if (currentPassword.equals(newPassword)) {
        request.setAttribute("notification", "Mật khẩu mới phải khác mật khẩu cũ!");
        request.getRequestDispatcher("/user/changePassword.jsp").forward(request, response);
        return;
      }
      try {
        if (!userService.checkCurrentPassword(email, currentPassword)) {
          request.setAttribute("notification", "Mật khẩu cũ không chính xác!");
          request.getRequestDispatcher("/user/changePassword.jsp").forward(request, response);
        }

        if (userService.updatePassword(newPassword,email)) {
          System.out.println("New Password: " + newPassword);
          request.setAttribute("notification", "Đổi mật khẩu thành công!");
          request.getRequestDispatcher("/user/signin.jsp").forward(request, response);
        } else {
          request.setAttribute("notification", "Đổi mật khẩu thất bại. Vui lòng thử lại!");
          request.getRequestDispatcher("/user/changePassword.jsp").forward(request, response);
        }
      } catch (Exception e) {
        request.setAttribute("notification", "Đã xảy ra lỗi trong quá trình đổi mật khẩu.!");
        request.getRequestDispatcher("/user/changePassword.jsp").forward(request, response);
      }
    }
  }
}

