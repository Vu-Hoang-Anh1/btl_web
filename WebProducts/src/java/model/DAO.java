
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO extends DBContext{
    public List<Category> getAllCategories(){
        List<Category> list = new ArrayList<>();
        String sql = "select * from Categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Category c = new Category(rs.getInt("CateId"), rs.getString("NameCate"));
                list.add(c);
            }
        } catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    
//    public List<Describe> getAll(){
//        List<Describe> list = new ArrayList<>();
//        String sql = "select * from Describe";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            while(rs.next()){
//                Describe d = new Describe();
//                d.setDesId(rs.getInt("DesId"));
//                d.setMatKinhCamUng(rs.getString("MatKinhCamUng"));
//                d.setDoPhanGiai(rs.getString("DoPhanGiai"));
//                d.setManHinhRong(rs.getString("ManHinhRong"));
//                d.setCameraSau(rs.getString("CameraSau"));
//                d.setQuayPhim(rs.getString("QuayPhim"));
//                d.setHeDieuHanh("HeDieuHanh");
//                d.setChipset(rs.getString("Chipset"));
//                d.setRam(rs.getString("Ram"));
//                d.setRom(rs.getString("Rom"));
//                d.setPin(rs.getString("Pin"));
//                String res1 = rs.getString("ThongTinSanPham");
//                String[] res1_kq = res1.split(".n@");
//                d.setThongTinSanPham(res1_kq);
//                String res2 = rs.getString("DacDiemNoiBat");
//                String[] res2_kq = res2.split(".n@");
//                d.setDacDiemNoiBat(res2_kq);
//                list.add(d);
//            }
//        } catch(SQLException e){
//            System.out.println(e);
//        }
//        return list;
//    }
}
