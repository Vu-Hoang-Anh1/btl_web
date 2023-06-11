package database;

import database.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import model.RevenueCus;
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
	
	public List<RevenueCus> getRevenueCus(){
		List <RevenueCus> list = new ArrayList<>();
		String sql = "select orders.userId, Users.fullname, Users.email, Users.phone_number, Users.address, \r\n"
				+ "sum(Orders.oQuantity * Products.Price) as Revenue\r\n"
				+ "from Orders, Users, Products\r\n"
				+ "where Users.userId = Orders.userId and Orders.ProId = Products.ProId\r\n"
				+ "group by userId\r\n"
				+ "order by Revenue desc";
		try {
			Connection connection = DBContext.getConnection();
			PreparedStatement st = connection.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				RevenueCus rc = new RevenueCus();
				rc.setUserId(rs.getInt(1));
				rc.setFullname(rs.getString(2));
				rc.setEmail(rs.getString(3));
				rc.setPhoneNumber(rs.getString(4));
				rc.setAddress(rs.getString(5));
				rc.setRevenue(rs.getInt(6));
				list.add(rc);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return list;
	}
	
	public RevenueCus getUserByUserId(int userId) {
		String sql = "select orders.userId, Users.fullname, Users.email, Users.phone_number, Users.address, \r\n"
				+ "sum(Orders.oQuantity * Products.Price) as Revenue\r\n"
				+ "from Orders, Users, Products\r\n"
				+ "where Users.userId = Orders.userId and Orders.ProId = Products.ProId and Users.userId=?";
		try {
			Connection connection = DBContext.getConnection();
			PreparedStatement st = connection.prepareStatement(sql);
			st.setInt(1, userId);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				RevenueCus rc = new RevenueCus();
				rc.setUserId(rs.getInt(1));
				rc.setFullname(rs.getString(2));
				rc.setEmail(rs.getString(3));
				rc.setPhoneNumber(rs.getString(4));
				rc.setAddress(rs.getString(5));
				rc.setRevenue(rs.getInt(6));
				return rc;
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return null;
	}
	
	public List <RevenueCus> getAllUserBySearch(String text){
		List <RevenueCus> list = new ArrayList<>();
		String sql = "select orders.userId, Users.fullname, Users.email, Users.phone_number, Users.address, \r\n"
				+ "sum(Orders.oQuantity * Products.Price) as Revenue\r\n"
				+ "from Orders, Users, Products\r\n"
				+ "where Users.userId = Orders.userId and Orders.ProId = Products.ProId and Users.fullname like '%"+text+"%'\r\n"
				+ "group by userId\r\n"
				+ "order by Revenue desc;";
		try {
			Connection connection = DBContext.getConnection();
			PreparedStatement st = connection.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				RevenueCus rc = new RevenueCus();
				rc.setUserId(rs.getInt(1));
				rc.setFullname(rs.getString(2));
				rc.setEmail(rs.getString(3));
				rc.setPhoneNumber(rs.getString(4));
				rc.setAddress(rs.getString(5));
				rc.setRevenue(rs.getInt(6));
				list.add(rc);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return list;
	}
	
	public Workbook gettblRevenueCus() {
		Workbook workbook = new XSSFWorkbook();
		String sql = "select orders.userId, Users.fullname, Users.email, Users.phone_number, Users.address, \r\n"
				+ "sum(Orders.oQuantity * Products.Price) as Revenue\r\n"
				+ "from Orders, Users, Products\r\n"
				+ "where Users.userId = Orders.userId and Orders.ProId = Products.ProId\r\n"
				+ "group by userId\r\n"
				+ "order by Revenue desc;";
		try {
			Connection connection = DBContext.getConnection();
			PreparedStatement st = connection.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			
			Sheet sheet = workbook.createSheet("sheet 1");
			
			Row rtd = sheet.createRow(1);
            Cell ctd = rtd.createCell(1);
            ctd.setCellValue("THỐNG KÊ DOANH THU CỦA KHÁCH HÀNG");
            
            CellRangeAddress mergeRegion = new CellRangeAddress(1, 1, 1, 4);
            sheet.addMergedRegion(mergeRegion);
            
            int rowNum = 3;
            Row r = sheet.createRow(rowNum++);
            Cell c1 = r.createCell(1);
            c1.setCellValue("STT");
            Cell c2 = r.createCell(2);
            c2.setCellValue("Tên khách hàng");
            Cell c3 = r.createCell(3);
            c3.setCellValue("Email");
            Cell c4 = r.createCell(4);
            c4.setCellValue("Số điện thoại");
            Cell c5 = r.createCell(5);
            c5.setCellValue("Địa chỉ");
            Cell c6 = r.createCell(6);
            c6.setCellValue("Doanh thu");
            
            sheet.setColumnWidth(1, 1500);
            sheet.setColumnWidth(2, 6000);
            sheet.setColumnWidth(3, 4500);
            sheet.setColumnWidth(4, 3600);
            sheet.setColumnWidth(5, 6000);
            sheet.setColumnWidth(6, 4500);
            
            int idx = 1;
            while (rs.next()) {
            	Row row = sheet.createRow(rowNum++);
                Cell cell1 = row.createCell(1);
                cell1.setCellValue(idx++);
                Cell cell2 = row.createCell(2);
                cell2.setCellValue(rs.getString(2));
                Cell cell3 = row.createCell(3);
                cell3.setCellValue(rs.getString(3));
                Cell cell4 = row.createCell(4);
                cell4.setCellValue(rs.getString(4));
                Cell cell5 = row.createCell(5);
                cell5.setCellValue(rs.getString(5));
                Cell cell6 = row.createCell(6);
                cell6.setCellValue(rs.getInt(6));
            }
            
		} catch (SQLException e) {
            System.out.println(e);
        }
		return workbook;
	}
	
	public static void main(String[] args) {
		userDAO uDao = new userDAO();
		System.out.println(uDao.userlogin("tramydotnat@gmail.com", "1520031234"));
	}

}
