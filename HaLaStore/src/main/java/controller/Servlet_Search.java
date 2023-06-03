package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;

import java.io.IOException;
import java.util.List;

import database.ProductDAO;

/**
 * Servlet implementation class Servlet_Search
 */
public class Servlet_Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao = new ProductDAO();
        String key = request.getParameter("key");
        if (key == null || key == "") {
         request.getRequestDispatcher("/view/jsp/search.jsp").forward(request, response);
        } else {
            List<Product> list = dao.search(key);
            request.setAttribute("products", list);
             request.getRequestDispatcher("/view/jsp/home.jsp").forward(request, response);
        }
	}

}
