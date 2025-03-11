package com.example.web.controller;

import com.example.web.dao.UserDao;
import com.example.web.model.User;
import com.example.web.service.EncryptAndDencrypt;
import com.example.web.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.Properties;
import java.io.IOException;
import java.util.Random;


@WebServlet(name = "ForgotPasswordController", value = {"/forgotPassword"})
public class ForgotPasswordController extends HttpServlet {
  private final UserService userService;
  private final EncryptAndDencrypt encryptAndDencrypt = new EncryptAndDencrypt();

  public ForgotPasswordController() {
    this.userService = new UserService(new UserDao());
  }

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.getRequestDispatcher("/user/forgotPassword.jsp").forward(request, response);
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String email = request.getParameter("email");

    boolean isEmail = userService.checkEmail(email);
    if (isEmail) {
      String newPassword = createNewPassword();
      sendEmail(request, response, email, newPassword);
      boolean isUpdated = userService.updatePassword(newPassword, email);
      if (isUpdated) {
        request.setAttribute("notification", "Mật khẩu mới đã được gửi qua email của bạn.");
        request.getRequestDispatcher("/user/changePassword.jsp").forward(request, response);
      }else {
        request.setAttribute("notification", "Email không tồn tại. Vui lòng thử lại");
        request.getRequestDispatcher("/user/forgotPassword.jsp").forward(request, response);
      }
    }
    else {
      request.setAttribute("notification", "Email không tồn tại. Vui lòng thử lại");
      request.getRequestDispatcher("/user/forgotPassword.jsp").forward(request, response);
    }
  }
  protected void sendEmail(HttpServletRequest request, HttpServletResponse response, String email, String newPassword) throws ServletException, IOException {
    try {
      final String HOST_NAME = "smtp.gmail.com";

      final int SSL_PORT = 465; // Port for SSL

      final String APP_EMAIL = "xhoang345@gmail.com"; // your email

      final String APP_PASSWORD = "hrjn wuhx zcfb tqkc"; // your password

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", HOST_NAME);
        props.put("mail.smtp.socketFactory.port", SSL_PORT);
        props.put("mail.smtp.socketFactory.class", "jakarta.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.port", SSL_PORT);

      // Tạo session JavaMail cho việc gửi email
        Session mailSession = Session.getDefaultInstance(props, new Authenticator() {
          protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(APP_EMAIL, APP_PASSWORD);
          }
        });

        try {
          MimeMessage message = new MimeMessage(mailSession);
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
          message.setSubject("Đổi mật khẩu");
          message.setText("Mật khẩu mới của bạn là:" + newPassword);

//          send Email
          Transport.send(message);

          HttpSession session = request.getSession();
          session.setAttribute("email", email);   // Lưu email vào HttpSession để chuyển qua changePass

          request.setAttribute("email", email);   // Đưa email vào request để sử dụng trong JSP
          request.getRequestDispatcher("/user/changePassword.jsp").forward(request, response);
        } catch (MessagingException | IOException | ServletException e) {
          request.setAttribute("notification", "Đã xảy ra lỗi trong quá trình gửi email. Vui lòng thử lại.");
          request.getRequestDispatcher("/user/forgotPassword.jsp").forward(request, response);
        }
    } catch (RuntimeException e) {
      throw new RuntimeException();
    }
  }

  private String createNewPassword() {
    String character = "qwertyuiopasdfghjklzxcvbnm0123456789!@*";
    String res = "";     //chuỗi kết quả
    Random rand = new Random();
    for (int i = 0; i < 6; i++) {
      int index = rand.nextInt(character.length());
      res = res + character.charAt(index);
    }
    return res;
  }
}
