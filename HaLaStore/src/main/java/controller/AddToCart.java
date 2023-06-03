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
        resp.setContentType("text/html");

        try(PrintWriter out=resp.getWriter()){
            ArrayList<Cart> cartList=new ArrayList<>();
            int id=Integer.parseInt(req.getParameter("id"));
            Cart cp=new Cart();
            cp.setProId(id);
            cp.setQuantity(1);
            HttpSession session=req.getSession();
            ArrayList<Cart> cart_list= (ArrayList<Cart>) session.getAttribute("cart_list");
            if(cart_list==null){
                cart_list.add(cp);
                session.setAttribute("cart_list",cart_list);
                resp.sendRedirect("home.jsp");
            }else{
                cartList=cart_list;

                boolean check=false;
                for(Cart c: cart_list){
                    if(c.getProId()==id){
                        check=true;
                        out.println("<h3 style='color:crimson; text-align: center'>Item Already in Cart. <a href='cart.jsp'>GO to Cart Page</a></h3>");

                    }
                }
                if(check==false){
                    cartList.add(cp);
                    resp.sendRedirect("home.jsp");
                }
            }
        }
    }
}
