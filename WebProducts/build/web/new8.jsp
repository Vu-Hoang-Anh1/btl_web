<%-- 
    Document   : new
    Created on : Apr 19, 2023, 9:37:26 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="product_css/new_css.css">
    </head>
    <body>
        <div class="new">
            <div class="tieude">
                <div class="tin"><h3><b>TIN CÔNG NGHỆ </b></h3></div>
                <div class="xemthem"><a href="newall"> Xem tất cả </a></div>
            </div>
            <hr/>
            <div class="pro">
                <ul>
                    <c:forEach var="n" items="${requestScope.news}">
                    <li>
                        <a href="${n.link}" target="_blank">
                            <div class="new_x">
                                <div class="hinhanh"><img src="img/img_new/${n.imageNew}" alt="#"></div>
                                <div class="tentin">
                                    ${n.nameNew}
                                </div>
                            </div>
                        </a>
                    </li>
                    </c:forEach>

                </ul>
            </div>
            
        </div>
    </body>
</html>
