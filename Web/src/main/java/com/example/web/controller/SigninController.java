package com.example.web.controller;

import com.example.web.dao.UserDao;
import com.example.web.model.User;
import com.example.web.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet (name = "LoginController", value = {"/signin"})
public class SigninController extends HttpServlet {
    private  final UserService userService;

    public SigninController() {
        this.userService = new UserService(new UserDao());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/user/signin.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = userService.checkLogin(username, password);
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("username", user.getUsername());
            session.setAttribute("role", user.getRole());

            if ("admin".equals(user.getRole())) {
                response.sendRedirect("admin");
            }else{
              session.setAttribute("acc", user);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            }
        }else {
            request.setAttribute("notification", "Tên đăng nhập hoăc mật khẩu không đúng");
            request.getRequestDispatcher("/user/signin.jsp").forward(request, response);
        }
    }
}
