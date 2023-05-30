/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author ADMIN
 */
public class ProductSearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        String key = request.getParameter("key");
        if (key == null || key == "") {
//            response.sendRedirect("ProductSearchServlet");
         request.getRequestDispatcher("search.jsp").forward(request, response);
        } else {
            List<Product> list = dao.search(key);
            request.setAttribute("products", list);
             request.getRequestDispatcher("home.jsp").forward(request, response);
        }

       

    }

}
