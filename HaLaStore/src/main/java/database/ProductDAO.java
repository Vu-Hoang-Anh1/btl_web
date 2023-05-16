


package database;

import database.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Describe;
import model.New;
import model.Product;

public class ProductDAO {
 
    public Category getCategoryByCateId(int CateId){
        String sql = "select * from categories where CateId=?";
        try {
        	Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, CateId);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Category c = new Category();
                c.setCateId(rs.getInt("CateId"));
                c.setNameCate(rs.getString("NameCate"));
                return c;
            }
        } catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    
    public New getNewById(int NewId){
        String sql = "select * from News where NewId=?";
        try {
        	Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, NewId);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                New n = new New(rs.getInt("NewId"), rs.getString("NameNew"), rs.getString("ImageNew"), rs.getString("Link"));
                return n;
            }
        } catch (SQLException e){
            System.out.println(e);
        }
        return null;
    }
    
    public List<New> getAllNew(){
        List<New> list = new ArrayList<>();
        String sql = "select * from News";
        try {
        	Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                New n = new New(rs.getInt("NewId"), rs.getString("NameNew"), rs.getString("ImageNew"), rs.getString("Link"));
                list.add(n);
            }
            
        } catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    public List<New> getTop8New(){
        List<New> list = new ArrayList<>();
        String sql = "SELECT * FROM News LIMIT 8;";
        try {
        	Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                New n = new New(rs.getInt("NewId"), rs.getString("NameNew"), rs.getString("ImageNew"), rs.getString("Link"));
                list.add(n);
            }
            
        } catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    public Describe getDescribeByDesId(int DesId){
        String sql = "select * from Describes where DesId=?";
        try {
        	Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, DesId);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Describe d = new Describe();
                d.setDesId(rs.getInt("DesId"));
                d.setMatKinhCamUng(rs.getString("MatKinhCamUng"));
                d.setDoPhanGiai(rs.getString("DoPhanGiai"));
                d.setManHinhRong(rs.getString("ManHinhRong"));
                d.setCameraSau(rs.getString("CameraSau"));
                d.setQuayPhim(rs.getString("QuayPhim"));
                d.setHeDieuHanh(rs.getString("HeDieuHanh"));
                d.setChipset(rs.getString("Chipset"));
                d.setRam(rs.getString("Ram"));
                d.setRom(rs.getString("Rom"));
                d.setPin(rs.getString("Pin"));
                String res1 = rs.getString("ThongTinSanPham");
                String[] res1_kq = res1.split(".n@");
                d.setThongTinSanPham(res1_kq);
                String res2 = rs.getString("DacDiemNoiBat");
                String[] res2_kq = res2.split(".n@");
                d.setDacDiemNoiBat(res2_kq);
                New n = getNewById(rs.getInt("NewId"));
                d.setNewId(n);
                return d;
            }
        } catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    
    public Product getProductByProId(int ProId){
        String sql = "select * from Products where ProId=?";
        try {
        	Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, ProId);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Product p = new Product();
                p.setProId(rs.getInt("ProId"));
                p.setNamePro(rs.getString("NamePro"));
                p.setImagePro(rs.getString("ImagePro"));
                p.setPrice(rs.getInt("Price"));
                p.setQuantity(rs.getInt("Quantity"));
                Category c = getCategoryByCateId(rs.getInt("CateId"));
                p.setCateId(c);
                Describe d = getDescribeByDesId(rs.getInt("DesId"));
                p.setDesId(d);
                return p;
            }
        } catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    
    // lay all ban ghi product
    public List<Product> getAllProducts(){
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products";
        try {
        	Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Product p = new Product();
                p.setProId(rs.getInt("ProId"));
                p.setNamePro(rs.getString("NamePro"));
                p.setImagePro(rs.getString("ImagePro"));
                p.setPrice(rs.getInt("Price"));
                p.setQuantity(rs.getInt("Quantity"));
                Category c = getCategoryByCateId(rs.getInt("CateId"));
                p.setCateId(c);
                Describe d = getDescribeByDesId(rs.getInt("DesId"));
                p.setDesId(d);
                list.add(p);
            }
        } catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> getAllProductsByCateId(int CateId){
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products where CateId=" + CateId + ";";
        try {
        	Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Product p = new Product();
                p.setProId(rs.getInt("ProId"));
                p.setNamePro(rs.getString("NamePro"));
                p.setImagePro(rs.getString("ImagePro"));
                p.setPrice(rs.getInt("Price"));
                p.setQuantity(rs.getInt("Quantity"));
                Category c = getCategoryByCateId(rs.getInt("CateId"));
                p.setCateId(c);
                Describe d = getDescribeByDesId(rs.getInt("DesId"));
                p.setDesId(d);
                list.add(p);
            }
        } catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();
		List<Product> kq = dao.getAllProducts();
		for(Product pr : kq) {
			System.out.println(pr.toString());
		}
		System.out.println(dao.getProductByProId(1).getNamePro());
	}
}
