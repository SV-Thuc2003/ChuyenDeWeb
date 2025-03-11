package com.example.web.model;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
  private List<CartItem> cartItemList;

  public ShoppingCart() {
    this.cartItemList = new ArrayList<>();
  }

  public void add(CartItem cartItem) {
    for (CartItem i : cartItemList){
      if(i.getProduct().getId()==cartItem.getProduct().getId()){
        i.addQuantity(1);
        return;
      }
    }
    this.cartItemList.add(cartItem);
  }

  public void remove(int id) {
    for(CartItem c : cartItemList){
      if (c.getProduct().getId()==id){
        cartItemList.remove(c);
        return;
      }
    }
  }

  public int getSize() {
    return cartItemList.stream().mapToInt(CartItem::getQuantity).sum(); // Đảm bảo tên đúng là getQuantity
  }

  public List<CartItem> getCartItemList() {
    if (cartItemList == null) {
      cartItemList = new ArrayList<>();
    }
    return cartItemList;
  }

  public void removeZeroQuantityItems() {
    cartItemList.removeIf(item -> item.getQuantity() <= 0); // Đảm bảo sử dụng getQuantity
  }

  public void update(int id, int quantity){
    for (CartItem c : cartItemList){
      if (c.getProduct().getId()==id){
        c.setQuantity(quantity);
        return;
      }
    }
  }
  public void updateCart() {
    removeZeroQuantityItems();
  }

  public double getTotalBill() {
    double re = 0;
    for(CartItem c : cartItemList){
      re =+c.getTotalPrice();
    }
    return re;
  }
}
