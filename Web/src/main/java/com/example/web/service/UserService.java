package com.example.web.service;

import com.example.web.dao.UserDao;
import com.example.web.model.Contact;
import com.example.web.model.User;

import java.util.List;

public class UserService {
    public UserDao userDao;

    public UserService(){
      userDao = new UserDao();
    }

    public UserService(UserDao userDao) {
        this.userDao = userDao;
    }

    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }
    public boolean checkEmail(String email) {
        return userDao.checkEmail(email);
    }
    public boolean addUser(User user) {
        return userDao.addUser(user);
    }
    public boolean checkCurrentPassword(String email, String currentPassword) {
      return userDao.checkCurrentPassword(email, currentPassword);
    }
    public boolean updatePassword(String newPassword, String email) {
      return  userDao.updatePassword(newPassword, email);
    }
    public User checkLogin(String username, String password) {
        return userDao.checkLogin(username, password);
    }

    public boolean saveContact(Contact contact) {
    return userDao.saveContact(contact);
  }

  public List<User> getAllUserForAdmin(){
      return userDao.getAllUserForAdmin();
  }
}
