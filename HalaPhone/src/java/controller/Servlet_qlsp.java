/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import database.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.File;
import java.util.List;
import model.Category;
import model.Describe;
import model.Product;

/**
 *
 * @author Admin
 */
@WebServlet(name="Servlet_qlsp", urlPatterns={"/Servlet_qlsp"})
public class Servlet_qlsp extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getParameter("action");
        String ProId_raw = request.getParameter("ProId");
        int ProId;
        ProductDAO dao = new ProductDAO();
        if(action==null || action==""){ 
            List<Product> list1 = dao.getAllProducts();
            
            int size = list1.size();
            int page, numperpage=10;
            int num = (size%numperpage==0 ? (size/numperpage) : ((size/numperpage)+1));
            String xpage = request.getParameter("page");
            if(xpage==null){
                page=1;
            }
            else {
                page=Integer.parseInt(xpage);
            }
            int start, end;
            start = (page-1)*numperpage;
            end = Math.min(page*numperpage, size);
            List<Product> list = dao.getListByPage(list1, start, end);
            
            request.setAttribute("dssp", list);
            request.setAttribute("page", page);
            request.setAttribute("num", num);
            
            request.getRequestDispatcher("/view/jsp/quanlysanpham.jsp").forward(request, response); 
        }
        else {
            if((ProId_raw==null || ProId_raw=="") && (action.equals("themsp"))){
                List<Category> listCate = dao.getAllCategories();
                request.setAttribute("cate", listCate);
                request.getRequestDispatcher("/view/jsp/qlsp_themsp.jsp").forward(request, response); 
            }
            else {
                try {
                    ProId = Integer.parseInt(ProId_raw);
                    if(action.equals("xemsp")){
                        Product p = dao.getProductByProId(ProId);
                        Describe d = dao.getDescribeByDesId(ProId);
                        request.setAttribute("pro", p);
                        request.setAttribute("des", d);
                        request.getRequestDispatcher("/view/jsp/qlsp_xemchitiet.jsp").forward(request, response);
                    }
                    else if(action.equals("suasp")){
                        Product p = dao.getProductByProId(ProId);
                        Describe d = dao.getDescribeByDesId(ProId);
                        request.setAttribute("pro", p);
                        request.setAttribute("des", d);
                        List<Category> listCate = dao.getAllCategories();
                        request.setAttribute("cate", listCate);
                        request.getRequestDispatcher("/view/jsp/qlsp_suasp.jsp").forward(request, response);
                    }
                    else if(action.equals("xoasp")){
                        
                        String realPath = request.getServletContext().getRealPath("/view/access/img/img_product");
                        Product p = dao.getProductByProId(ProId);
                        String newFilePath = realPath + "/" + p.getImagePro();
                        File imgFile = new File(newFilePath);
                        
                        if(imgFile.exists()){
                            imgFile.delete();
                        }
                        dao.deleteProduct(ProId);
                        HttpSession session = request.getSession();
                        session.setAttribute("success", "Xóa sản phẩm thành công!");
                        response.sendRedirect("Servlet_qlsp");
                    }
                } catch (NumberFormatException e) {
                    System.out.println(e);
                }
            }
        }
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String seach = request.getParameter("seach");
        ProductDAO dao = new ProductDAO();
        if(seach==null || seach==""){
            response.sendRedirect("Servlet_qlsp");
        }
        else {
            List<Product> list = dao.getProductsBySeachAdmin(seach);
            request.setAttribute("dssp", list);
            request.getRequestDispatcher("/view/jsp/quanlysanpham.jsp").forward(request, response); 
        }
    }

}
