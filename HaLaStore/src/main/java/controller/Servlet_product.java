
package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Product;
import database.ProductDAO;
import model.New;
@WebServlet("/Servlet_product")
/*
 * @WebServlet(name = "Servlet_product", urlPatterns = { "/Servlet_product" })
 */
public class Servlet_product extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.getAllProducts();
        request.setAttribute("products", list);
        request.getRequestDispatcher("/view/jsp/product.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }
}
