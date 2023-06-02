<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hala Phone</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/access/stylecss/style.css">

</head>
<style>
a{
 	text-decoration: none;
 
}
sidebar .side-item .side-li .side-ul{
	display: none;
	position: absolute;
	top: 0;
	right: -249px;
	background-color: #fbfbfb;
	border: 1px solid rgba(229, 229, 234, 0.906);
	border-radius: 10px;
	width: 250px;
	height: auto;
	list-style: none;
	padding-left: 10px;
	z-index: 1;
	box-shadow: 0 1px 2px 0 rgb(60 64 67/ 10%), 0 2px 6px 2px
		rgb(60 64 67/ 15%);
}
.icon{
	display: flex;
    align-items: center;
    line-height: 40px;
    padding-left: 15px;
}

footer{
	margin-bottom: 0;
}
footer .footer_bottom .box_top{
	text-align: center;
}
.header__location__map a {
	color: #fff;
	text-decoration: none;
	display: flex;
	align-items: center;
}

.Danhmuc {
	text-decoration: none;
}

#dropdown-menu {
	display: none;
}

.nav-item:hover #dropdown-menu {
	display: block;
}
</style>

<script>
	document
			.addEventListener(
					"DOMContentLoaded",
					function() {
						var dropdownToggle = document
								.querySelector(".nav-link.dropdown-toggle");
						var dropdownMenu = document
								.querySelector("#dropdown-menu");

						dropdownToggle
								.addEventListener(
										"click",
										function(event) {
											event.preventDefault();
											dropdownMenu.style.display = (dropdownMenu.style.display === "none") ? "block"
													: "none";
										});
					});
</script>

<body>


	<%@include file="header.jsp"%>
	<%@include file="slidebar.jsp"%>

	<div class="list_product">
		<div class = "icon">
		<i style="font-size: 25px;" class="fa-solid fa-mobile-screen-button"></i>
			<h3>ĐIỆN THOẠI</h3>
		</div>
		<hr />
		<c:forEach items="${requestScope.products}" var="pro">
			<c:set var="p" value="${pro.proId}" />
			<div id = "" class="product" style="width: 273px; padding: 0;">
				<a href="Servlet_product_describe?ProId=${p}" target="_blank"
					class="product_a">
					<div class="product_infor" style="padding-top: 15px; margin-bottom: 23px;">
						<div class="product_img" style="width: 273px; margin: 0; margin-bottom: 23px;">
							<img
								src="${pageContext.request.contextPath}/view/access/img/img_product/${pro.imagePro}"
								alt="${pro.namePro}" />
						</div>
						<div class="product_name">
							<h3 style="margin: 0;">${pro.namePro}</h3>
						</div>


						<div class="product_price">
							<p>
								<b> <fmt:formatNumber value="${pro.price}"
										pattern="###,###,###" /> đ
								</b>
							</p>

						</div>
					</div>

					<div class="product_button" style="margin: auto;">
						<div class="product_button_detail">
							<a href="Servlet_product_describe?ProId=${p}" target="_blank"><b>CHI
									TIẾT </b></a>
						</div>
						<div class="product_button_order">
							<div class="order">
								<a href="#"><i class="fa-solid fa-cart-shopping"></i> </a>
							</div>
							<div class="order">
								<a href="#"><b>MUA NGAY</b> </a>
							</div>
						</div>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>


	<div class="new">
		<div class="tieude">
			<div class="tin">
				<h3>
					<b>TIN CÔNG NGHỆ </b>
				</h3>
			</div>
			<div class="xemthem">
				<a href="Servlet_newAll"> Xem tất cả </a>
			</div>
		</div>
		<hr />
		<div class="pro">
			<ul>
				<c:forEach var="n" items="${requestScope.news}">
					<li><a href="${n.link}" target="_blank">
							<div class="new_x" style="width: 273px; padding: 0;">
								<div class="hinhanh" style="width: 273px; padding: 0;">
									<img
										src="${pageContext.request.contextPath}/view/access/img/img_new/${n.imageNew}"
										alt="#">
								</div>
								<div class="tentin">${n.nameNew}</div>
							</div>
					</a></li>
				</c:forEach>

			</ul>
		</div>

	</div>


	<%@include file="footer.jsp"%>
</body>
</html>
