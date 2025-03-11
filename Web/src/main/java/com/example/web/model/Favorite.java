package com.example.web.model;

public class Favorite {
  private int userId;
  private int product_id;

  // Constructor
  public Favorite(int product_id, int userId) {
    this.product_id = product_id;
    this.userId = userId;
  }

  // Getters and Setters
  public int getId() {
    return product_id;
  }

  public void setId(int id) {
    this.product_id = id;
  }

  public int getUserId() {
    return userId;
  }

  public void setUserId(int userId) {
    this.userId = userId;
  }
}
