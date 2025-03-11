package com.example.web.service;

import com.example.web.dao.ContactDao;
import com.example.web.model.Contact;

import java.util.List;

public class ContactService {
  ContactDao contactDao = new ContactDao();

  public List<Contact> getAllContacts() {
    return contactDao.getAllContacts();
  }
}
