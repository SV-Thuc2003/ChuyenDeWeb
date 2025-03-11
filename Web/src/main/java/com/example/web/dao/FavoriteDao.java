package com.example.web.dao;

import com.example.web.model.Favorite;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class FavoriteDao {
  private final Jdbi jdbi;
  private List<Favorite> favorites;

  public FavoriteDao(Jdbi jdbi) {
    this.jdbi = jdbi;
  }

  public void addFavorite(Favorite favorite) {
    jdbi.withHandle(handle ->
      handle.createUpdate("INSERT INTO favorites (product_id, user_id) VALUES (:product_id, :userId)")
        .bind("userId", favorite.getUserId())
        .execute()
    );
  }

  public List<Favorite> getFavoritesByUserId(int userId) {
    return jdbi.withHandle(handle ->
      handle.createQuery("SELECT * FROM favorites WHERE user_id = :userId")
        .bind("userId", userId)
        .mapTo(Favorite.class)
        .list()
    );
  }

  public void removeFavorite(int product_id) {
    jdbi.withHandle(handle ->
      handle.createUpdate("DELETE FROM favorites WHERE id = :id")
        .bind("product_id", product_id)
        .execute()
    );
  }
  public boolean favoriteExists(int product_id, int userId) {
    for (Favorite favorite : favorites) {
      if (favorite.getId() == product_id && favorite.getUserId() == userId) {
        return true; // Mục yêu thích đã tồn tại
      }
    }
    return false; // Mục yêu thích không tồn tại
  }
}
