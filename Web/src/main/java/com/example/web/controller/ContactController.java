package com.example.web.controller;

import com.example.web.dao.UserDao;
import com.example.web.model.Contact;
import com.example.web.model.User;
import com.example.web.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet (name = "ContactController", value = {"/contact"})
public class ContactController extends HttpServlet {

    private  final UserService userService;

    public ContactController() {
        this.userService = new UserService(new UserDao());
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/contact,jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        if (session == null || session.getAttribute("user") == null) {
            request.setAttribute("notification", "Bạn chưa đăng nhập. Vui lòng đăng nhập trước khi gửi liên hệ.");
            request.getRequestDispatcher("/contact.jsp").forward(request, response);
            return;
        }

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String title = request.getParameter("title");
        String message = request.getParameter("message");

        User user = (User) session.getAttribute("user");
        int user_id = user.getId();

        Contact contact = new Contact(user_id, name, email, title, message);

        boolean isContact = userService.saveContact(contact);
        if (isContact) {
            request.setAttribute("notification", "Gửi liên hệ thành công!");
        }else {
            request.setAttribute("notification", "Lỗi gửi liên hệ");
        }
        request.getRequestDispatcher("/contact.jsp").forward(request, response);
    }
}
