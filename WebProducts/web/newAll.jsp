<%-- 
    Document   : newAll
    Created on : Apr 19, 2023, 9:59:26 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    </head>
    <body>
        <div><%@include  file="header.jsp" %></div>
        
        <div><%@include file="sidebar.jsp" %></div> 
        
        <div class="new">
            <h3><b>TIN CÔNG NGHỆ </b></h3>
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
    
    <div><%@include file="footer.jsp" %></div>
    <<script src="js/showlogin.js"></script>
    <<script src="js/slideshow.js"></script>
    </body>
</html>
