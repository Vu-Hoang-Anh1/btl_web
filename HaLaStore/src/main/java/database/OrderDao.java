package database;

import model.Order;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    private Connection con;

    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public OrderDao(Connection con) {
        super();
        this.con = con;
    }

//    them mot san pham vao database orders
    public boolean insertOrder(Order model) {
        boolean result = false;
        try {
            query = "insert into Orders (ProId, userId, oQuantity, oDate) values(?,?,?,?)";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, model.getProId());
            pst.setInt(2, model.getUid());
            pst.setInt(3, model.getQunatity());
            pst.setString(4, model.getDate());
            pst.executeUpdate();
            result = true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return result;
    }

    //???
    public List<Order> userOrders(int id) {
        List<Order> list = new ArrayList<>();
        try {
            query = "select * from Orders where userId=? order by Orders.oId desc";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                ProductDAO productDao = new ProductDAO(this.con);
                int pId = rs.getInt("ProId");
                Product product = productDao.getProductByProId(pId);
                order.setOrderId(rs.getInt("oId"));
                order.setProId(pId);
                order.setNamePro(product.getNamePro());
                order.setCateId(product.getCateId());
                order.setPrice(product.getPrice()*rs.getInt("oQuantity"));
                order.setQunatity(rs.getInt("oQuantity"));
                order.setDate(rs.getString("oDate"));
                list.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return list;
    }

    public void cancelOrder(int id) {
        //boolean result = false;
        try {
            query = "delete from Orders where oId=?";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            pst.execute();
            //result = true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        //return result;
    }
}