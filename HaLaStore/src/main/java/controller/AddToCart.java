package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/add-to-cart")
public class AddToCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("id"));
        Cart cp=new Cart();
        cp.setProId(id);
        cp.setQuantityCart(1);
        HttpSession session=req.getSession();
        ArrayList<Cart> cart_list= (ArrayList<Cart>) session.getAttribute("cart_list");
        if(cart_list==null){
        	cart_list = new ArrayList<>();
            cart_list.add(cp);
            session.setAttribute("cart_list",cart_list);
            session.setAttribute("error", "Thêm sản phẩm thành công!");
            resp.sendRedirect("Servlet_home");
        }else{
            boolean check=false;
            for(Cart c: cart_list){
                if(c.getProId()==id){
                    check=true;
                    session.setAttribute("error", "Sản phẩm đã tồn tại!");
                    
                }
            }
            if(check==false){
                cart_list.add(cp);
                session.setAttribute("cart_list",cart_list);
                session.setAttribute("error", "Thêm sản phẩm thành công!");               
//                resp.sendRedirect("Servlet_home");
            }
            resp.sendRedirect("Servlet_home"); 
        }
    }
}
