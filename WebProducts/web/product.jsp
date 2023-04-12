<%-- 
    Document   : product
    Created on : Apr 9, 2023, 5:16:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lilas Blanc</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
        <link rel="stylesheet" href="product_css/product_css.css">
    </head>
    <body>
        <div class="list_product">
            <c:forEach items="${requestScope.products}" var="pro">
                <c:set var="p" value="${pro.proId}"/>
                <div class="product">
                    <a href="describe?ProId=${p}" target="_blank" class="product_a">
                        <div class="product_infor">
                            <div class="product_img">
                                <img src="img_product/${pro.imagePro}" alt="${pro.namePro}"/>
                            </div>
                            <div class="product_name">
                                <h3>${pro.namePro}</h3>
                            </div>
                               
                                  
                            <div class="product_price">
                                <p><b> <fmt:formatNumber value="${pro.price}" pattern="###,###,###"/>   đ </b></p>
                                
                            </div>
                        </div>

                        <div class="product_button">
                            <div class="product_button_detail">
                                <a href="describe?ProId=${p}" target="_blank"><b>CHI TIẾT </b></a>
                            </div>
                            <div class="product_button_order">
                                <div class="order"><a href="#"><i class="fa-solid fa-cart-shopping"></i>
                                </a></div>
                                <div class="order"><a href="#"><b>MUA NGAY</b> </a></div>                       
                            </div>
                        </div>
                    </a>
                </div>
            </c:forEach>
            
        </div>
    </body>    
</html>
