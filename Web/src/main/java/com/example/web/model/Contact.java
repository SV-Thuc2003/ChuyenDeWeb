package com.example.web.model;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

public class Contact implements Serializable{
  private int id;
  private int user_id;
  private String name;
  private String email;
  private String title;
  private String message;
  private Timestamp create_at;

  public Contact() {}

  public Contact(int user_id, String name, String email, String title, String message) {
    this.user_id = user_id;
    this.name = name;
    this.email = email;
    this.title = title;
    this.message = message;
  }
  public Contact(int id, Timestamp create_at, String name, String email, String title, String message) {
    this.id = id;
    this.create_at = create_at;
    this.name = name;
    this.email = email;
    this.title = title;
    this.message = message;
  }
  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public int getUser_id() {
    return user_id;
  }
  public void setUser_id(int user_id) {
    this.user_id = user_id;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getMessage() {
    return message;
  }
  public void setMessage(String message) {
    this.message = message;
  }
  public Date getCreate_at() {
    return create_at;
  }
  public void setCreate_at(Timestamp create_at) {
    this.create_at = create_at;
  }
}
