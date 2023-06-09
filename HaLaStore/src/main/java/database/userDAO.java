package database;

import database.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.user;
public class userDAO {
	public List <user> getAllUser(){
		List <user> list = new ArrayList<>();
		String sql = "select * from Users";
		try {
			Connection connection = DBContext.getConnection();
			PreparedStatement st = connection.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				user u = new user();
				u.setUserId(rs.getInt("UserId"));
				u.setFullname(rs.getString("fullname"));
				u.setEmail(rs.getString("email"));
				u.setPhoneNumber(rs.getString("phone_number"));
				u.setAddress(rs.getString("address"));
				u.setPassword(rs.getString("pasword"));
				list.add(u);
				
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return list;
	}
	public user userlogin(String email, String password) {
		user user = null;
		try {
			Connection connection = DBContext.getConnection();
			String sqlLogin = "select * from users where email=? and pasword = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(sqlLogin);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				user = new user();
				user.setUserId(resultSet.getInt("userId"));
				user.setFullname(resultSet.getString("fullname"));
				user.setEmail(resultSet.getString("email"));
				user.setPhoneNumber(resultSet.getString("phone_number"));
				user.setAddress(resultSet.getString("address"));
				user.setPassword(resultSet.getString("pasword"));
				
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return user;
	}
	
	public void signup(user u) {
		try {
			Connection connection = DBContext.getConnection();
			String sqlInsert = "INSERT INTO Users (userId, fullname, email, phone_number,"
					+ " address, pasword) "
					+ "VALUES(?,?,?,?,?,?)";
			PreparedStatement st = connection.prepareStatement(sqlInsert);
			
				st.setInt(1, u.getUserId());
				st.setString(2, u.getFullname());
				st.setString(3, u.getEmail());
				st.setString(4, u.getPhoneNumber());
				st.setString(5, u.getAddress());
				st.setString(6, u.getPassword());
				
				st.executeUpdate();

				st.close();
				connection.close();
			
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
	
	public boolean checkUser(String email) {
		boolean result = false;
		try {
			Connection connection = DBContext.getConnection();
			String sqlSelectByEmail = "select * from users where email=?";
			PreparedStatement st = connection.prepareStatement(sqlSelectByEmail);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				result = true;
			}
			st.close();
			connection.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
		return result;
	}
	
	public List <user> getAllUserBySearch(String text){
		List <user> list = new ArrayList<>();
		String sql = "select * from Users where fullname like '%" + text + "%' ";
		try {
			Connection connection = DBContext.getConnection();
			PreparedStatement st = connection.prepareStatement(sql);
//			st.setString(1, text);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				user u = new user();
				u.setUserId(rs.getInt("UserId"));
				u.setFullname(rs.getString("fullname"));
				u.setEmail(rs.getString("email"));
				u.setPhoneNumber(rs.getString("phone_number"));
				u.setAddress(rs.getString("address"));
				u.setPassword(rs.getString("password"));
				list.add(u);
				
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static void main(String[] args) {
		userDAO uDao = new userDAO();
		System.out.println(uDao.userlogin("tramydotnat@gmail.com", "1520031234"));
	}

}
