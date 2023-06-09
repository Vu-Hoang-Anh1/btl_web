<%@page import="model.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.info{
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
		<!-- <form action="">
			<div class="login js__login">
				<div class="login__container js__login__container">
					<div class="login__close js__login__close">
						<i class="fas fa-times login__close__icon"></i>
					</div>
					<div class="login__header">
						<h4>đăng nhập tài khoản HALA phone</h4>
					</div>
					<div class="login__body">
						<input type="text" class="login__form"
							placeholder="Nhập email hoặc số điện thoại"> <input
							type="password" class="login__form" placeholder="Nhập mật khẩu">
					</div>
					<div class="login__help">
						<a href="#" class="login__help__link">Quên mật khẩu?</a>
					</div>
					<div class="login__footer">
						<button class="login__butlogin">đăng nhập</button>
						<p class="login__hoac">Hoặc</p>
						<button class="login__butgg">
							<i class="fab fa-google"></i> Đăng nhập bằng tài khoản Google
						</button>
						<div class="login__helptk">
							<p class="login__helptk__text">
								Bạn chưa có tài khoản? <a href="view/jsp/signup.jsp"
									class="login__linkdk">Đăng kí ngay</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</form> -->


		<div class="header__search">
			<div class="header__search__ic">
				<i class="fas fa-search header__search--icon"></i>
			</div>
			<input class="header__search__ip" type="text"
				placeholder="Bạn cần tìm gì ?">
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
			<i class="fas fa-shopping-bag header__bag--icon"></i>
			
			<p><a href="${pageContext.request.contextPath}/view/jsp/cart.jsp" style="color: white; text-decoration: none;">Giỏ hàng
			<c:if test="${cart_list != null}">
				<span>(${cart_list.size()})</span></a></p>
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
				<a style="color: black;"  href="${pageContext.request.contextPath}/userShopping?hanhDong=logout"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất </a>
			</div>
		</div>
		<%
		}
		%>

	</div>

	<div class="content"></div>
</body>
</html>