package com.example.web.controller;

import com.example.web.model.Favorite;
import com.example.web.service.FavoriteService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/favorites")
public class FavoriteController extends HttpServlet {
  private final FavoriteService favoriteService;

  public FavoriteController(FavoriteService favoriteService) {
    this.favoriteService = favoriteService;
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int product_id = request.getIntHeader("product_id");
    int userId = request.getIntHeader("userId");
    Favorite favorite = new Favorite(0, userId);

    if (favoriteService.favoriteExists(product_id, userId)) {
      response.setStatus(HttpServletResponse.SC_CONFLICT); // Hoặc SC_BAD_REQUEST
      response.getWriter().write("Favorite already exists.");
      return;
    }

    favoriteService.addFavorite(favorite);
    response.setStatus(HttpServletResponse.SC_CREATED);
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int userId = request.getIntHeader("userId");
    List<Favorite> favorites = favoriteService.getFavorites(userId);

    response.setContentType("application/json");
    PrintWriter out = response.getWriter();
    out.print("[");
    for (int i = 0; i < favorites.size(); i++) {
      Favorite favorite = favorites.get(i);
      out.print("{");
      out.print("\"product_id\":" + favorite.getId() + ",");
      out.print("\"userId\":\"" + favorite.getUserId() + "\"");
      out.print("}");
      if (i < favorites.size() - 1) {
        out.print(",");
      }
    }
    out.print("]");
    out.flush();
  }

  @Override
  protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int id = Integer.parseInt(request.getParameter("id"));
    favoriteService.removeFavorite(id);
    response.setStatus(HttpServletResponse.SC_NO_CONTENT);
  }
}
