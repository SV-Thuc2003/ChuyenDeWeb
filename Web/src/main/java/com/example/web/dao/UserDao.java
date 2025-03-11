package com.example.web.dao;

import com.example.web.connector.JdbiConnect;
import com.example.web.model.Contact;
import com.example.web.model.User;
import com.example.web.service.EncryptAndDencrypt;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class UserDao {
  private final Jdbi jdbi;
  EncryptAndDencrypt encryptAndDencrypt = new EncryptAndDencrypt();

  public UserDao() {
    this.jdbi = JdbiConnect.getJdbi();
  }

  public List<User> getAllUsers() {
    String sql = "SELECT id, username, email, role FROM users";
    return jdbi.withHandle(handle ->
      handle.createQuery(sql)
        .map((rs, ctx) -> new User(
          rs.getInt("id"),
          rs.getString("username"),
          rs.getString("email"),
          rs.getString("role")
        )).list()
    );
  }

  public boolean checkEmail(String email) {
    return jdbi.withHandle(handle -> {
      String sql = "SELECT COUNT(*) FROM users WHERE email = :email";
      int exists = handle.createQuery(sql)
        .bind("email", email)
        .mapTo(Integer.class)
        .findOne()
        .orElse(0);

      return exists > 0;
    });
  }

  public boolean addUser(User user) {
    return jdbi.inTransaction(handle -> {
      String checkUsernameSql = "SELECT 1 FROM users WHERE username = :username LIMIT 1";
      Boolean exists = handle.createQuery(checkUsernameSql)
        .bind("username", user.getUsername())
        .mapTo(Boolean.class)
        .findOne()
        .orElse(false);

      if (exists) {
        return false;
      }
      String hashedPassword = encryptAndDencrypt.encrypt(user.getPassword());
      String sql = "INSERT INTO users (username, password, name, email, role, create_at)" +
        "VALUES (:username, :password, :name, :email, :role, NOW())";

      int rowAffected = handle.createUpdate(sql)
        .bind("username", user.getUsername())
        .bind("password", hashedPassword)
        .bind("name", user.getName())
        .bind("email", user.getEmail())
        .bind("role", user.getRole())
        .execute();
      return rowAffected == 1;
    });
  }

  public boolean updatePassword(String newPassword, String email) {
    String hashedPassword = encryptAndDencrypt.encrypt(newPassword);
    String sql = "UPDATE users SET password = :password, update_at = NOW() WHERE email = :email";

    return jdbi.withHandle(handle -> {
      try {
        int rowAffected = handle.createUpdate(sql)
          .bind("email", email)
          .bind("password", hashedPassword)
          .execute();
        System.out.println("Rows affected: " + rowAffected);
        return rowAffected == 1;
      }catch (Exception e) {
        System.out.println("Error updating password: " + e.getMessage());
        return false;
      }
    });

  }

  public boolean checkCurrentPassword (String email, String currentPassword) {
    String sql = "SELECT password FROM users WHERE email = :email";
    String storedPassword = jdbi.withHandle(handle ->{
      return handle.createQuery(sql)
        .bind("email", email)
        .mapTo(String.class)
        .findOne()
        .orElse(null);
    });
    if (storedPassword == null){
      return false;
    }
    System.out.println("Stored Password: " + storedPassword);
    System.out.println("Current Password: " + currentPassword);
    return encryptAndDencrypt.checkPass(currentPassword, storedPassword);
  }

  public User checkLogin(String username, String password) {
    String sql = "SELECT id, username, password, role FROM users WHERE username = :username";
    User user = jdbi.withHandle(handle ->
      handle.createQuery(sql)
        .bind("username", username)
        .mapToBean(User.class)
        .findOne()
        .orElse(null)

    );
    if (user == null || !encryptAndDencrypt.checkPass(password, user.getPassword())) {
      return null;
    }
    return user;
  }

  public boolean saveContact(Contact contact) {
    String sql = "INSERT INTO contact (user_id, name, email, title, message) VALUES (:user_id, :name, :email, :title, :message)";
    return jdbi.withHandle(handle -> {
      int rowAffected = handle.createUpdate(sql)
        .bind("user_id", contact.getUser_id())
        .bind("name", contact.getName())
        .bind("email", contact.getEmail())
        .bind("title", contact.getTitle())
        .bind("message", contact.getMessage())
        .execute();
      return rowAffected == 1;
    });
  }

public List<User> getAllUserForAdmin() {
    String sql = "SELECT id, name, email, phone, username, password, address, role, create_at, update_at FROM users";
    return jdbi.withHandle(handle ->
      handle.createQuery(sql)
        .map((rs, ctx)-> new User(
          rs.getInt("id"),
          rs.getString("name"),
          rs.getString("email"),
          rs.getString("phone"),
          rs.getString("username"),
          rs.getString("password"),
          rs.getString("address"),
          rs.getString("role"),
          rs.getTimestamp("create_at"),
          rs.getTimestamp("update_at")
        )).list()
    );
}
  public static void main(String[] args) {
    UserDao userDao = new UserDao();
    User newUser =  new User("axh0104", "Anh Xuân", "xhoang345@gmail.com", "admin", "admin");

    try {
      boolean exists = userDao.addUser(newUser);
      if (exists) {
        System.out.println("Thêm tài khoản thành công");
      }else{
        System.out.println("Thêm tài khoản thất bại");
      }
    }catch (Exception e) {
      e.printStackTrace();
      System.out.println("Đã xảy ra lỗi khi thêm tài khoản" + e.getMessage());
    }
  }
}
