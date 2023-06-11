<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/access/stylecss/styleSignup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/access/themify-icons-font/themify-icons/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/access/js/Validation.js">
<title>Signup</title>
</head>

<style>
.form-group__item small {
	color: red;
}

.form-submit-btn {
	width: 100%;
}
</style>


<body>
	<jsp:include page="header.jsp"></jsp:include>

	<%
	String error = request.getAttribute("error") + "";
	error = (error.equals("null") ? "" : error);

	String fullname = request.getAttribute("fullname") + "";
	fullname = (fullname.equals("null") ? "" : fullname);

	String email = request.getAttribute("email") + "";
	email = (email.equals("null") ? "" : email);

	String phoneNumber = request.getAttribute("phoneNumber") + "";
	phoneNumber = (phoneNumber.equals("null") ? "" : phoneNumber);

	String address = request.getAttribute("address") + "";
	address = (address.equals("null") ? "" : address);
	%>
	
	<div id="signup-container">

		<div class="text-center navbar-container">
			<div>
				<a href="${pageContext.request.contextPath}/Servlet_home"><i
					class="arrow_left ti-arrow-left"></i></a>
			</div>

			<div class="navbar_title">Đăng ký tài khoản</div>

		</div>

		<div class="login_logo_video">
			<video autoplay loop>
				<source
					src="${pageContext.request.contextPath}/view/access/img/img_signup/Video chưa đặt tên ‐ Được tạo bằng Clipchamp (1).mp4">
			</video>

		</div>

		<div class="login-form">
			<div class="text-center login-form__tille">Đăng ký tài khoản
				HALAmember</div>

			<form class="form" action="${pageContext.request.contextPath}/userShopping" method="get">
				<input type="hidden" name="hanhDong" value="signup" />

				<div class="form-group">

					<div class="form-group__item">
						<input type="text" class="form-group__item-button"
							placeholder="Vui lòng nhập số điện thoại(bắt buộc)" id="mobie"
							name="phoneNumber" required="required" value="<%=phoneNumber%>">
						<small></small> <span></span>
					</div>

					<div class="form-group__item">
						<input type="email" class="form-group__item-button"
							placeholder="Vui lòng nhập địa chỉ email(bắt buộc)" id="email"
							name="email" required="required" value="<%=email%>"> <small
							id="error"><%=error%></small> <span></span>
					</div>

					<div class="form-group__item">
						<input type="text" class="form-group__item-button"
							placeholder="Vui lòng nhập họ và tên" id="name" name="fullname"
							value="<%=fullname%>"> <small></small> <span></span>
					</div>
					<div class="form-group__item">
						<input type="text" class="form-group__item-button"
							placeholder="Vui lòng nhập địa chỉ nhận hàng" id="diaChi"
							name="address" value="<%=address%>"> <small></small> <span></span>
					</div>

					<div class="form-group__item">
						<input type="password" class="form-group__item-button"
							placeholder="Vui lòng nhập mật khẩu" id="matKhau" name="password"
							required="required" onkeyup="kiemTraMatKhau()"> <small
							id="msg"></small> <span id="msg"></span>
					</div>

					<div class="form-group__item">
						<input type="password" class="form-group__item-button"
							placeholder="Vui lòng xác nhận nhật khẩu" id="matKhauNhapLai"
							name="passwordRS" required="required" onkeyup="kiemTraMatKhau()">
						<small id="msg"></small> <span id="msg"></span>
					</div>

					<div class="group__option">
						<input type="checkbox" id="dongYDieuKhoan" name="dongYDieuKhoan"
							required="required"> <label>Tôi đồng ý với các
							điều khoản bảo mật cá nhân</label>

					</div>

					<div class="group__option">
						<input type="checkbox" id="dongYNhanMail" name="dongYNhanMail">
						<label>Đăng ký nhận bản tin khuyến mãi qua email</label>

					</div>


					<div class="items-center">
						Bạn đã có tài khoản ? <a
							href="${pageContext.request.contextPath}/view/jsp/login.jsp">Đăng
							nhập ngay</a>
					</div>



				</div>
				<button id="signUp" type="submit" class="form-submit-btn"
					name="submit" onclick="">Đăng kí</button>
			</form>


		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>


</html>