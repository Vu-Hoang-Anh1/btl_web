<%@page import="model.user"%>
<%@ page import="model.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="database.ProductDAO" %>
<%@ page import="database.DBContext" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    user auth = (user) request.getSession().getAttribute("user");
   if (auth != null) {
        request.setAttribute("person", auth);
    }
//    lay ra sp trong cart_list
    ArrayList<Cart> cart_list= (ArrayList<Cart>) session.getAttribute("cart-list");
    List<Cart> cartProduct=null;
    if(cart_list!=null){
        request.setAttribute("cart_list",cart_list);
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/access/stylecss/login.css">
<title>login</title>
</head>
<style>
span.error{
    position: absolute;
    border-bottom: 2px solid red;
    top: 39px;
    left: 0;
    transition: 0.3s;
}
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<main class="form-login" style="margin-top: 70px">
		<%
		String error = request.getAttribute("error") + "";
		error = (error.equals("null") ? "" : error);
		%>
		<div class="login_logo_video">
			<video autoplay loop>
				<source
					src="${pageContext.request.contextPath}/view/access/img/img_signup/Video chưa đặt tên ‐ Được tạo bằng Clipchamp (1).mp4">
			</video>

		</div>
		<form class = "form-group" action="${pageContext.request.contextPath}/userShopping" method="post">
			<input type="hidden" name="hanhDong" value="login"/>
			<div class="form-floating">
				 <input type="text"
					class="form-control" id="email" placeholder="email" name="email">
				</br>
				<small id="error"><%=error%></small>
				<span class="error"></span>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="password"
					placeholder="password" name="password">
			</div>
			<button class="btn-login" type="submit">Đăng nhập</button>
			<a href="${pageContext.request.contextPath}/view/jsp/signup.jsp" style="color: red; padding-bottom: 20px">Đăng
				ký tài khoản mới</a>

		</form>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>