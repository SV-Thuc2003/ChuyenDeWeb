package com.example.web.controller.adminController;

import com.example.web.model.Contact;
import com.example.web.service.ContactService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminContactController", value = "/admin/listContacts")
public class AdminContactController extends HttpServlet {
  ContactService contactService = new ContactService();

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    List<Contact> contacts = contactService.getAllContacts();
    request.setAttribute("contacts", contacts);
    request.getRequestDispatcher("/admin/listContact.jsp").forward(request, response);
  }
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

}
}
