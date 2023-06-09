package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Category;
import model.Describe;
import model.Product;
import model.order;

public class orderDAO {
	public List<order> getAllOrderByUserId(int UserId){
		List<order> list = new ArrayList<>();
		String sql = "select * from Oders where uId=?";
		try {
			Connection connection = DBContext.getConnection();
			PreparedStatement st = connection.prepareStatement(sql);
			st.setInt(1, UserId);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				order o = new order();
				o.setOrderId(rs.getInt(1));
				o.setProId(rs.getInt(2));
				ProductDAO proDAO = new ProductDAO();
				Product p = proDAO.getProductByProId(rs.getInt(2));
				o.setNamePro(p.getNamePro());
                o.setImagePro(p.getImagePro());
                o.setPrice(p.getPrice());
                o.setQuantity(p.getQuantity());
                o.setCateId(p.getCateId());
                o.setDesId(p.getDesId());
				o.setUid(rs.getInt(3));
				o.setQunatity(rs.getInt(4));
				o.setDate(rs.getString(5));
				list.add(o);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static void main(String[] args) {
		orderDAO dao = new orderDAO();
		List<order> list = dao.getAllOrderByUserId(1);
		for(order i : list) {
			System.out.println(i.getOrderId() + " " + i.getProId() + " " 
					+ i.getNamePro() + " " + i.getPrice() + " "
					+ i.getUid()+ " " + i.getQunatity() + " " + i.getDate());
		}
	}
}
