package database;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UserRepository {
	public void create(String fullname, 
			String email,
			String password,
			String phoneNumber,
			String address,
			HttpServletRequest req,
			HttpServletResponse resp) throws SQLException, ServletException, IOException {
		
		Connection connection = DBContext.getConnection();
		String getUserByName = "SELECT * FROM users WHERE email = ?;";
		PreparedStatement preparedStatement = connection.prepareStatement(getUserByName);
		preparedStatement.setString(1, email);
		ResultSet userGetByName = preparedStatement.executeQuery();
		String fullnameInDb = null;
		while( userGetByName.next() ) {
			fullnameInDb = userGetByName.getString("fullname");
		}
		
		if( Objects.nonNull(fullnameInDb) ) {
			req.setAttribute("message", "Tai khoan hoac mat khau da ton tai");
			RequestDispatcher requestDispatcher =	req.getRequestDispatcher("/view/jsp/signup.jsp");
			requestDispatcher.include(req, resp);
		}
		else {
			String registerSql = "INSERT INTO databaseltw.users (fullname, email, phone_number, address, pasword) VALUES (?, ?, ?, ?, ?);";
			preparedStatement = connection.prepareStatement(registerSql);
			preparedStatement.setString(1, fullname);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, password);
			preparedStatement.setString(4, phoneNumber);
			preparedStatement.setString(5, address);
			//preparedStatement.executeUpdate();
			
			
			req.setAttribute("message", "Dang ki thanh cong");
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("/Servlet_home");
			requestDispatcher.forward(req, resp);
		}
		
	}
}
