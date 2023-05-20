
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/access/stylecss/slidebar.css">
<title>Lilas Blanc</title>

<body>
<sidebar>
<div id="sidebar">
	<div id="side_bar">
		<a href="Servlet_home?CateId=" style="color: black"><h4 class="bar-item">
				<i style="font-size: 25px;" class="fa-solid fa-mobile-screen-button"></i>Điện
				thoại
			</h4></a>
		<ul class="side-item">
			<li class="side-li"><a class="bar-father" href="Servlet_home?CateId=1"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> IPhone
					</div>
					<div class="bar-flex">
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="Servlet_home?ProId=1">IPhone 14 </a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=9"> IPhone 13 </a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=17">IPhone 12 </a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="Servlet_home?CateId=2">
					<div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> SamSung
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div>
			</a>
				<ul class="side-ul">
					<li><a class="bar-son" href="Servlet_home?ProId=2">SamSung Galaxy
							S23</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=10">SamSung Galaxy
							S22</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=18">SamSung Galaxy
							Z</a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="Servlet_home?CateId=3"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Oppo
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="Servlet_home?ProId=3">Oppo Reno8 T</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=11">Oppo Reno8 Z</a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="Servlet_home?CateId=4"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Xiaomi
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="Servlet_home?ProId=12">Xiaomi Redmi
							Note 11</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=23">Xiaomi 11</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=22">Xiaomi 12T</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=4">Xiaomi 13</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=21">Xiaomi POCO</a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="Servlet_home?CateId=5"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Vivo
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="Servlet_home?ProId=13">ViVo T1X</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=5">ViVo V23e</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=24">ViVo Y22S</a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="Servlet_home?CateId=6">
					<div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Realme
					</div> <i class="fa-solid fa-chevron-right"></i>
			</a>
				<ul class="side-ul">
					<li><a class="bar-son" href="Servlet_home?ProId=14">Realme 10 </a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=6">Realme C35 </a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=19">Realme 9 Pro </a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="Servlet_home?CateId=7"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Nokia
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="Servlet_home?ProId=7">Nokia C31</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=15">Nokia C21 Plus</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=20">Nokia G11 Plus</a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="Servlet_home?CateId=8"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Asus
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="Servlet_home?ProId=8">Asus Rog Phone
							6</a></li>
					<li><a class="bar-son" href="Servlet_home?ProId=16">Asus Rog Phone
							5S</a></li>
				</ul></li>
		</ul>
	</div>
	<div class="slideshow">
		<div class="slideshow-container">
			<div class="mySlides fade">
				<a href=""> <img src="${pageContext.request.contextPath}/view/access/img/img_slideshow/slide1.png"
					style="width: 650px; height: 330px;"></a>
			</div>
			<div class="mySlides fade">
				<a href=""><img src="${pageContext.request.contextPath}/view/access/img/img_slideshow/slide2.png"
					style="width: 650px; height: 330px;"></a>
			</div>
			<div class="mySlides fade">
				<a href=""><img src="${pageContext.request.contextPath}/view/access/img/img_slideshow/slide3.png"
					style="width: 650px; height: 330px;"></a>
			</div>
			<!--<a class="prev" onclick="plusSlides(-1)">❮</a>-->
			<!--<a class="next" onclick="plusSlides(1)">❯</a>-->
		</div>
		<br>

		<div style="text-align: center">
			<span class="dot" onclick="currentSlide(0)"></span> <span class="dot"
				onclick="currentSlide(1)"></span> <span class="dot"
				onclick="currentSlide(2)"></span>
		</div>
	</div>

	<div id="adver">
		<div>
			<a href=""><img src="${pageContext.request.contextPath}/view/access/img/img_slideshow/ad1.png" alt=""></a>
		</div>
		<div class="adver_2">
			<a href=""><img src="${pageContext.request.contextPath}/view/access/img/img_slideshow/ad2.png" alt=""></a>
		</div>
		<div>
			<a href=""><img src="${pageContext.request.contextPath}/view/access/img/img_slideshow/ad3.png" alt=""></a>
		</div>
	</div>


</div>
</sidebar>
</body>
<script src="${pageContext.request.contextPath}/view/access/js/slideshow.js"></script>

