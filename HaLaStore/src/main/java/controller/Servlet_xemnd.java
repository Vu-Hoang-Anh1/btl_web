package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Order;

import java.io.IOException;
import java.util.List;

import database.DBContext;
import database.OrderDao;

/**
 * Servlet implementation class Servlet_xemnd
 */

@WebServlet(name="Servlet_xemnd", urlPatterns={"/Servlet_xemnd"})
public class Servlet_xemnd extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	int UserId = Integer.parseInt(request.getParameter("UserId"));
    	OrderDao dao = new OrderDao(DBContext.getConnection());
    	List<Order> list = dao.getAllOrderByUserId(UserId);
    	request.setAttribute("dsorder", list);
    	request.setAttribute("ten", request.getParameter("Name"));
        request.getRequestDispatcher("/view/jsp/xemnd.jsp").forward(request, response); 
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

}