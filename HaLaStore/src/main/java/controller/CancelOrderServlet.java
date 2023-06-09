package controller;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import database.DBContext;
import database.OrderDao;

@WebServlet("/cancel-order")
public class CancelOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try(PrintWriter out = resp.getWriter()) {
            String id = req.getParameter("id");
            if(id != null) {
                OrderDao orderDao = new OrderDao(DBContext.getConnection());
                orderDao.cancelOrder(Integer.parseInt(id));
            }
            resp.sendRedirect("view/jsp/order.jsp");
        }
    }
}
