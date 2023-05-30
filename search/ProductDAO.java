 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Describe;
import model.New;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext{
  
   public List<Product> search(String key){
        List<Product> list = new ArrayList<>();
        String sql = "select Products.ProId, Products.NamePro, Products.ImagePro, Products.Price, Products.Quantity, Products.CateId, Products.DesId\n"
                + "from Products, Categories where Products.CateId = Categories.CateId \n"
                + "and ((NameCate like ?) or (NamePro like ?))";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, key);
            st.setString(2, key);
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
}
