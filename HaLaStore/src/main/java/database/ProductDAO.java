


package database;

import database.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Cart;
import model.Category;
import model.Describe;
import model.New;
import model.Product;

public class ProductDAO {
	 private Connection con;
	    private String query;
	    private PreparedStatement pst;
	    private ResultSet rs;
	//hieu them
	    public ProductDAO(Connection con) {
	        this.con=con;
	    }
	    public ProductDAO(){}
 
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
    
    public List <Category> getAllCategories(){
    	List<Category> list = new ArrayList<>();
    	String sql = "select * from categories";
    	try {
    		Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
         
            while(rs.next()) {
            	Category c = new Category();
            	c.setCateId(rs.getInt("CateId"));
            	c.setNameCate(rs.getString("NameCate"));
            	list.add(c);
            }
		} catch (SQLException e) {
			System.out.println(e);
		}
    	return list;
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

    public List<Product> getProductsBySeachAdmin(String text) {
        List<Product> list = new ArrayList<>();
        String sql = "select Products.ProId, Products.NamePro, Products.ImagePro, Products.Price, Products.Quantity, Products.CateId, Products.DesId\n"
                + "from Products, Categories where Products.CateId = Categories.CateId \n"
                + "and ((NameCate like ?) or (NamePro like ?))";
        try {
            Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, text);
            st.setString(2, text);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
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
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public boolean checkProductByNamePro(String NamePro) {
        String sql = "select * from Products where NamePro=?";
        try {
            Connection connection = DBContext.getConnection();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, NamePro);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }
    
    public void insertProduct(Product p, Describe d) {
        try {
            Connection connection = DBContext.getConnection();
            String sql1 = "SELECT ProId FROM Products order by ProId desc LIMIT 1";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs1 = st1.executeQuery();
            if (rs1.next()) {
                int id = rs1.getInt(1) + 1;
                String sql2 = "insert Describes(DesId, MatKinhCamUng, DoPhanGiai,"
                		+ " ManHinhRong, CameraSau, QuayPhim,HeDieuHanh, Chipset,"
                		+ " Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat)"
                        + "values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement st2 = connection.prepareStatement(sql2);
                st2.setInt(1, id);
                st2.setString(2, d.getMatKinhCamUng());
                st2.setString(3, d.getDoPhanGiai());
                st2.setString(4, d.getManHinhRong());
                st2.setString(5, d.getCameraSau());
                st2.setString(6, d.getQuayPhim());
                st2.setString(7, d.getHeDieuHanh());
                st2.setString(8, d.getChipset());
                st2.setString(9, d.getRam());
                st2.setString(10, d.getRom());
                st2.setString(11, d.getPin());
                String res1 = "";
                for (String i : d.getThongTinSanPham()) {
                    res1 += i + ".n@";
                }
                st2.setString(12, res1);

                String res2 = "";
                for (String i : d.getDacDiemNoiBat()) {
                    res2 += i + ".n@";
                }
                st2.setString(13, res2);
                st2.executeUpdate();

                String sql3 = "insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)"
                        + "values(?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement st3 = connection.prepareStatement(sql3);
                st3.setInt(1, id);
                st3.setString(2, p.getNamePro());
                st3.setString(3, p.getImagePro());
                st3.setInt(4, p.getPrice());
                st3.setInt(5, p.getQuantity());
                int CateId = p.getCateId().getCateId();
                st3.setInt(6, CateId);
                st3.setInt(7, id);
                st3.executeUpdate();
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public void deleteProduct(int ProId) {
        try {
            Connection connection = DBContext.getConnection();
            String sql1 = "delete from Products where ProId=?";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            st1.setInt(1, ProId);
            st1.executeUpdate();

            String sql2 = "delete from Describes where DesId=?";
            PreparedStatement st2 = connection.prepareStatement(sql2);
            st2.setInt(1, ProId);
            st2.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateProduct(Product p, Describe d) {
        try {
            Connection connection = DBContext.getConnection();
            String sql1 = "update Describes set MatKinhCamUng=?, DoPhanGiai=?, "
                    + "ManHinhRong=?, CameraSau=?, QuayPhim=?, "
                    + "HeDieuHanh=?, Chipset=?, Ram=?, Rom=?, Pin=?, "
                    + "ThongTinSanPham=?, DacDiemNoiBat=? where DesId=?";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            st1.setString(1, d.getMatKinhCamUng());
            st1.setString(2, d.getDoPhanGiai());
            st1.setString(3, d.getManHinhRong());
            st1.setString(4, d.getCameraSau());
            st1.setString(5, d.getQuayPhim());
            st1.setString(6, d.getHeDieuHanh());
            st1.setString(7, d.getChipset());
            st1.setString(8, d.getRam());
            st1.setString(9, d.getRom());
            st1.setString(10, d.getPin());
            String res1 = "";
            for (String i : d.getThongTinSanPham()) {
                res1 += i + ".n@";
            }
            st1.setString(11, res1);
            
            String res2 = "";
            for (String i : d.getDacDiemNoiBat()) {
                res2 += i + ".n@";
            }
            st1.setString(12, res2);
            st1.setInt(13, d.getDesId());
            st1.executeUpdate();
            
            String sql2 = "update Products set NamePro=?, ImagePro=?, Price=?, "
                    + "Quantity=?, CateId=? where ProId=?";
            PreparedStatement st2 = connection.prepareStatement(sql2);
            st2.setString(1, p.getNamePro());
            st2.setString(2, p.getImagePro());
            st2.setInt(3, p.getPrice());
            st2.setInt(4, p.getQuantity());
            int CateId = p.getCateId().getCateId();
            st2.setInt(5, CateId);
            st2.setInt(6, p.getProId());
            st2.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public List<Product> getListByPage(List<Product> list, int start, int end){
        ArrayList<Product> arr = new ArrayList<>();
        for(int i=start; i<end; i++){
            arr.add(list.get(i));
        }
        return arr;
    }
  //hieu 
    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> book = new ArrayList<>();
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    query = "select * from Products where ProId=?";
                    pst = con.prepareStatement(query);
                    pst.setInt(1, item.getProId());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        Cart row = new Cart();
                        row.setProId(rs.getInt("ProId"));
                        row.setNamePro(rs.getString("NamePro"));
                        row.setPrice(rs.getInt("Price")*item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        row.setImagePro(rs.getString("ImagePro"));
                        book.add(row);
                    }

                }
                System.out.println(book);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return book;
    }
    

    //    tinh tong tien trong cart
    public long getTotalCartPrice(ArrayList<Cart> cartList) {
        long sum = 0;
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    query = "select Price from Products where ProId=?";
                    pst = con.prepareStatement(query);
                    pst.setInt(1, item.getProId());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        sum+=rs.getInt("Price")*item.getQuantity();
                    }

                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return sum;
    }
    
    public static void main(String[] args) {
        // Tạo danh sách giỏ hàng
        ArrayList<Cart> cartList = new ArrayList<>();
        ProductDAO proDao = new ProductDAO();
        // Thêm các sản phẩm vào giỏ hàng
        cartList.add(new Cart());
        cartList.add(new Cart());

        // Lấy danh sách các sản phẩm từ giỏ hàng
        List<Cart> productList = proDao.getCartProducts(cartList);

        // In ra các sản phẩm trong giỏ hàng
        for (Cart product : productList) {
            System.out.println("Product ID: " + product.getProId());
            System.out.println("Name: " + product.getNamePro());
            System.out.println("Price: " + product.getPrice());
            System.out.println("Quantity: " + product.getQuantity());
            System.out.println("Image: " + product.getImagePro());
            System.out.println("-----------------------");
        }
    }
    

    

}
