package com.example.web.service;

import com.example.web.dao.FavoriteDao;
import com.example.web.model.Favorite;

import java.util.List;

public class FavoriteService {
  private final FavoriteDao favoriteDao;

  public FavoriteService(FavoriteDao favoriteDao) {
    this.favoriteDao = favoriteDao;
  }

  public void addFavorite(Favorite favorite) {
    favoriteDao.addFavorite(favorite);
  }

  public List<Favorite> getFavorites(int userId) {
    return favoriteDao.getFavoritesByUserId(userId);
  }

  public void removeFavorite(int product_id) {
    favoriteDao.removeFavorite(product_id);
  }

  public boolean favoriteExists(int product_id, int userId) {
    return favoriteDao.favoriteExists(product_id, userId);
  }
}
