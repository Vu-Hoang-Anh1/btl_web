package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

import org.apache.poi.ss.usermodel.Workbook;

import database.userDAO;

/**
 * Servlet implementation class Servlet_excelRevenueCus
 */
@WebServlet(name = "Servlet_excelRevenueCus", urlPatterns = { "/Servlet_excelRevenueCus" })
public class Servlet_excelRevenueCus extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userDAO dao = new userDAO();
		Workbook workbook = dao.gettblRevenueCus();
		
		response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
		response.setHeader("Content-Disposition", "attachment; filename=\"RevenueCustume.xlsx\"");
		
		OutputStream outputStream = response.getOutputStream();
		workbook.write(outputStream);
		outputStream.close();
		response.sendRedirect("Servlet_qlnd");
	}

}
