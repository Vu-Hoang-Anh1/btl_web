<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="database.ProductDAO"%>
<%@page import="database.DBContext"%>
<%@ page import="model.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@page import="model.user"%>
<%@page import="jakarta.servlet.http.HttpSession" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/access/stylecss/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/access/themify-icons-font/themify-icons/themify-icons.css">
<title>Web BTL</title>
</head>
<style>
.header__location__map a {
	color: #fff;
	text-decoration: none;
	display: flex;
	align-items: center;
}

.Danhmuc {
	text-decoration: none;
}

.info {
	position: relative;
}

.info-name {
	display: flex;
	justify-content: center;
}

.logout {
	display: none;
	position: absolute;
	top: 100%;
	border-radius: 10px;
	background-color: #fff;
	padding: 5px;
	border: 1px solid #ccc;
	z-index: 1;
}
.content-error {
    position: fixed;
    z-index: 2;
    margin-top: 80px;
    /* background-color: antiquewhite; */
    width: 20%;
    border-radius: 10px;
    font-size: 25px;
    text-align: center;
    line-height: 40px;
}



span.error {
	position: absolute;
	z-index:3;
	border-bottom: 2px solid red;
	top: 39px;
	left: 0;
	transition: 0.3s;
	background-color: black;
}
</style>

<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function() {
		document.getElementById('info-name').addEventListener('click',
				function() {
					var logoutDiv = document.getElementById('logout');
					if (logoutDiv.style.display === 'none') {
						logoutDiv.style.display = 'block';
					} else {
						logoutDiv.style.display = 'none';
					}
				});
	});
	

</script>

<body>
	<%
	String error = request.getAttribute("error") + "";
	error = (error.equals("null") ? "" : error);
	%>

	<div class="header">

		<div class="header__logo">
			<a href="${pageContext.request.contextPath}/Servlet_home"> <img
				src="${pageContext.request.contextPath}/view/access/img/img_logo/hala_Phone__1_-removebg-preview.png"
				alt="" class="header__logo--img">
			</a>
		</div>
		<a class="Danhmuc" href="#side_bar">
			<div class="header__category">
				<i class="far fa-list-alt header__category--icon"></i>
				<p>Danh mục</p>
			</div>
		</a>

		<button class="header__location js__location">
			<i class="fas fa-map-marker-alt header__location--icon"></i>
			<div class="header__location__display">
				<p>Xem giá tại</p>
				<p>Hà Nội</p>
			</div>
			<i class="fas fa-angle-down header__location--icon"></i>
		</button>
		<div class="header__search" style="justify-content: center;">
			
			<form id = "searchForm" action="${pageContext.request.contextPath}/userShopping"
				method="post" style="height: 100%; width: 100%;">
				<input type="hidden" name="hanhDong" value="search" /> 
				<div class="header__search__ic" style="border-radius: 10px">
				<i class="fas fa-search header__search--icon"></i>
				<input
					class="header__search__ip headerSearch" type="text"
					name="headerSearch" id="headerSearch" placeholder="Bạn cần tìm gì ?"></br>
			</div>
			</form>
			<div id ="contentError" class="content-error<%= error.equals("") ? " hide" : "" %>">
				
			</div>

		</div>
		<a href="tel: 88888888">
			<div class="header__smart">
				<i class="fas fa-phone-alt"></i>
				<div class="header__samrt--dis">
					<p>Gọi mua hàng</p>
					<p>8888.8888</p>
				</div>
			</div>
		</a>

		<div class="header__location__map">
			<a href="${pageContext.request.contextPath}/view/jsp/map.jsp"> <i
				class="fas fa-map-marked-alt"></i>
				<div class="header__location__map--dis">
					<p>Cửa hàng</p>
					<p>gần bạn</p>
				</div>
			</a>
		</div>

		<div class="header__shipping">
			<i class="fas fa-shipping-fast"></i>
			<div class="header__shipping--dis">
				<p>Tra cứu</p>
				<p>đơn hàng</p>
			</div>
		</div>

		<div class="header__bag">
		<c:if test="${sessionScope.user != null}">
			<a class="header__bag" href="${pageContext.request.contextPath}/view/jsp/cart.jsp">
			<i class="fas fa-shopping-bag header__bag--icon"></i>
			<p>Giỏ hàng</p>
			<%
			if (session.getAttribute("user") == null) {
				session.removeAttribute("cart-list");
				
			}
			
			ArrayList<Cart> cart_list1= (ArrayList<Cart>)session.getAttribute("cart-list");
			if(cart_list1 != null && cart_list1.size()>0){
			%>
			<span class="badge badge-danger"><%= cart_list1.size() %></span>
			<%
			}
			%>
		</a>
		</c:if>
		<c:if test="${sessionScope.user == null}">
		<a class="header__bag" href="${pageContext.request.contextPath}/view/jsp/login.jsp">
			<i class="fas fa-shopping-bag header__bag--icon"></i>
			<p>Giỏ hàng</p>
			
		</a>
		</c:if>
		
		</div>
		<%
		Object object = session.getAttribute("user");
		user user = null;
		if (object != null) {
			user = (user) object;
		}
		if (user == null) {
		%>
		<a href="${pageContext.request.contextPath}/view/jsp/login.jsp">
			<button class="header__member js__member">
				<i class="fas fa-user header__member--icon"></i>
				<p>Đăng nhập</p>
			</button>

		</a>
		<%
		} else {
		%>
		<div class="info" style="margin-left: 0.25em">
			<button class="header__member info-name" id="info-name">
				<b><i class="ti-user header__member--icon"></i><%=user.getFullname()%></b>
			</button>
			<div class="logout" id="logout">
				<a style="color: black;"
					href="${pageContext.request.contextPath}/userShopping?hanhDong=logout"><i
					class="fa-solid fa-right-from-bracket"></i> Đăng xuất </a>
			</div>
		</div>
		<%
		}
		%>

	</div>

</body>
</html>