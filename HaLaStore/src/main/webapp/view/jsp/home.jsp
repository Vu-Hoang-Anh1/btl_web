<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hala Phone</title>
<link rel="stylesheet" href="css/style.css">

</head>

<body>


	<%@include file="header.jsp"%>
	<%@include file="slidebar.jsp"%>

	<div class="list_product">
		<h3>ĐIỆN THOẠI</h3>
		<hr />
		<c:forEach items="${requestScope.products}" var="pro">
			<c:set var="p" value="${pro.proId}" />
			<div class="product">
				<a href="describe?ProId=${p}" target="_blank" class="product_a">
					<div class="product_infor">
						<div class="product_img">
							<img src="../access/img/img_product/${pro.imagePro}" alt="${pro.namePro}" />
						</div>
						<div class="product_name">
							<h3>${pro.namePro}</h3>
						</div>


						<div class="product_price">
							<p>
								<b> <fmt:formatNumber value="${pro.price}"
										pattern="###,###,###" /> đ
								</b>
							</p>

						</div>
					</div>

					<div class="product_button">
						<div class="product_button_detail">
							<a href="describe?ProId=${p}" target="_blank"><b>CHI TIẾT
							</b></a>
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
				<a href="newall"> Xem tất cả </a>
			</div>
		</div>
		<hr />
		<div class="pro">
			<ul>
				<c:forEach var="n" items="${requestScope.news}">
					<li><a href="${n.link}" target="_blank">
							<div class="new_x">
								<div class="hinhanh">
									<img src="../access/img/img_new/${n.imageNew}" alt="#">
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
