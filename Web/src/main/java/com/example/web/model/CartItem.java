package com.example.web.model;

public class CartItem {
  private Products product;
  private int quantity;

  public CartItem(Products product) {
    this.product = product;
  }

  public CartItem(Products product, int quantity) {
    this.product = product;
    this.quantity = quantity;
  }

  public Products getProduct() {
    return product;
  }

  public int getQuantity() {
    return quantity;
  }

  public void setProduct(Products product) {
    this.product = product;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  public boolean addQuantity(int quantity){
    this.quantity += quantity;
    return true;
  }
  public double getTotalPrice(){
    return this.quantity *this.product.getPrice();
  }
}
