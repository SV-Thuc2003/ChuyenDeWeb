package com.example.web.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Products implements Serializable{
    private int id;
    private  int category_id;
    private String category_name;
    private int quantity;
    private int stock;
    private String name;
    private String description;
    private double price;
    private String status;
    private String brand;
    private String feature;
    public String image_url;
    public Timestamp create_at;
    public Timestamp update_at;

    public Products() {}

    public Products(int id, int category_id, String name, String description, double price, String status, String brand, String feature, String image_url) {
        this.id = id;
        this.category_id = category_id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.status = status;
        this.brand = brand;
        this.feature = feature;
        this.image_url = image_url;
    }

  public Products(int id, String categoryName, String name, double price, int quantity, int stock, Timestamp createAt, Timestamp updateAt, String brand) {
      this.id = id;
      this.category_name = categoryName;
      this.name = name;
      this.price = price;
      this.quantity = quantity;
      this.stock = stock;
      this.create_at = createAt;
      this.update_at = updateAt;
  }


  @Override
    public String toString() {
        return "id: " + id +
                ", category_id: " + category_id +
                ", name:'" + name + '\'' +
                ", price:" + price +
                ", imageUrl:'" + image_url + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getCategory_id() {
        return category_id;
    }
    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }
    public String getCategory_name() {
      return category_name;
    }
    public void setCategory_name(String category_name) {
      this.category_name = category_name;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public String getBrand() {
        return brand;
    }
    public void setBrand(String brand) {
        this.brand = brand;
    }
    public String getFeature() {
        return feature;
    }
    public void setFeature(String feature) {
        this.feature = feature;
    }
    public String getImage_url() {
        return image_url;
    }
    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }
    public int getQuantity() {
      return quantity;
    }
    public void setQuantity(int quantity) {
      this.quantity = quantity;
    }
    public int getStock() {
      return stock;
    }
    public void setStock(int stock) {
      this.stock = stock;
    }
    public Timestamp getCreate_at() {
      return create_at;
    }
    public void setCreate_at(Timestamp create_at) {
      this.create_at = create_at;
    }
    public Timestamp getUpdate_at() {
      return update_at;
    }
    public void setUpdate_at(Timestamp update_at) {
      this.update_at = update_at;
    }
}
