package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import model.user;

import java.io.IOException;
import java.util.List;

import database.ProductDAO;
import database.userDAO;

/**
 * Servlet implementation class Servlet_qlnd
 */
@WebServlet(name="Servlet_qlnd", urlPatterns={"/Servlet_qlnd"})
public class Servlet_qlnd extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	userDAO dao = new userDAO();
    	List<user> list = dao.getAllUser();
    	request.setAttribute("dsnd", list);
        request.getRequestDispatcher("/view/jsp/qlnd.jsp").forward(request, response); 
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	String seach = request.getParameter("seach");
    	userDAO dao = new userDAO();
        if(seach==null || seach==""){
            response.sendRedirect("Servlet_qlnd");
        }
        else {
            List<user> list = dao.getAllUserBySearch(seach);
            request.setAttribute("dsnd", list);
            request.getRequestDispatcher("/view/jsp/qlnd.jsp").forward(request, response); 
        }
    }

}