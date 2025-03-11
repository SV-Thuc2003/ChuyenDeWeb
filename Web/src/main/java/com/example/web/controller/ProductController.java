package com.example.web.controller;

import com.example.web.model.Products;
import com.example.web.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "ProductController", value = "/shop")
public class ProductController extends HttpServlet {

    public ProductController() throws SQLException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      ProductService productService = new ProductService();

        String pageParam = request.getParameter("page");
        String minPriceParam = request.getParameter("minPrice");
        String maxPriceParam = request.getParameter("maxPrice");
        String select = request.getParameter("select");
        String categoryParam = request.getParameter("category");
        String brandParam = request.getParameter("brand");

        int page = (pageParam != null && Integer.parseInt(pageParam) >= 1) ? Integer.parseInt(pageParam) : 1;
        int pageSize = 6;
        int pagesToShow = 3;

        double minPrice = (minPriceParam != null) ? Double.parseDouble(minPriceParam) : 0;
        double maxPrice = (maxPriceParam != null) ? Double.parseDouble(maxPriceParam) : 200000000;

        int category = (categoryParam != null) ? Integer.parseInt(categoryParam) : 0;
        String brand = brandParam != null ? brandParam : null;

        // phan trang
        int totalProducts = productService.getProductCountByPriceFilter(minPrice, maxPrice, category, brand);
        int totalPages = (int) Math.ceil((double) totalProducts / pageSize);

        int startPage = Math.max(1, page - (pagesToShow / 2));
        int endPage = Math.min(totalPages, startPage + pagesToShow - 1);

        if (endPage - startPage + 1 < pagesToShow) {
            startPage = Math.max(1, endPage - pagesToShow + 1);
        }

        List<Products> productsList;
        productsList = productService.getProductsByPriceFilter(page, pageSize, select, minPrice, maxPrice, category, brand);

        request.setAttribute("productsList", productsList);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("page", page);
        request.setAttribute("select", select);
        request.setAttribute("minPrice", minPrice);
        request.setAttribute("maxPrice", maxPrice);
        request.setAttribute("category", category);
        request.setAttribute("brand", brand);
        request.setAttribute("startPage", startPage);
        request.setAttribute("endPage", endPage);

        request.getRequestDispatcher("/shop.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
    }
}
