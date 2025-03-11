package com.example.web.controller;

import com.example.web.dao.UserDao;
import com.example.web.model.User;
import com.example.web.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "SignupController", value = {"/signup"})
public class SignupController extends HttpServlet {
    private final UserService userService;

    public SignupController() {
        this.userService = new UserService(new UserDao());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/user/signup.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String role = request.getParameter("role");

        User newUser = new User();
        newUser.setUsername(username);
        newUser.setPassword(password);
        newUser.setEmail(email);
        newUser.setRole("user");

        boolean isUser = userService.addUser(newUser);
        if (isUser) {
            request.getRequestDispatcher("/user/signin.jsp").forward(request, response);
        }else {
            request.setAttribute("notification", "Tên đăng nhập đã tồn tại. Vui lòng thử lại");
            request.getRequestDispatcher("/views/signup.jsp").forward(request, response);
        }
    }
}
