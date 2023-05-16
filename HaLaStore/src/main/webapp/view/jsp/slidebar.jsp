
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Lilas Blanc</title>
<!--<link rel="stylesheet" href="./css/product_css.css">-->
<!--<link rel="stylesheet" href="./css/style.css">-->
<style>
sidebar {
	display: block;
	margin: 5%;
	box-sizing: border-box;
	list-style: none;
	font-size: 15px;
}

sidebar #sidebar {
	display: flex;
	flex-wrap: wrap;
	flex-direction: row;
}

sidebar .side_bar {
	margin-left: 35px;
	width: 200px;
	height: 350px;
	display: block;
	content: "";
	font-family: sans-serif;
	border: 1px solid rgba(229, 229, 234, 0.906);
	padding-top: 20px;
	border-radius: 15px;
	/* position: fixed; */
	background-color: #fbfbfb;
	box-shadow: 0 1px 2px 0 rgb(60 64 67/ 10%), 0 2px 6px 2px
		rgb(60 64 67/ 15%);
}

sidebar .side-item {
	padding: 0;
}

sidebar .side-item .side-li {
	list-style: none;
	position: relative;
	border-bottom: none;
	/* margin-left: 30px; */
}

sidebar .side-item .side-li a {
	display: block;
	color: #333;
	padding: 8px;
	text-decoration: none;
}

sidebar .side-item .side-li .bar-father:hover {
	background-color: #d8dadb;
}

sidebar .side-item .side-li .side-ul {
	display: none;
	position: absolute;
	top: 0;
	right: -262px;
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

sidebar .side_bar .bar-son:hover {
	color: red;
}

slidebar .bar-son {
	color: #333;
	margin-left: 15px;
}

sidebar .side-item .side-li:hover ul {
	display: block;
}

sidebar .side-item .side-li .bar-father {
	display: flex;
	flex-wrap: wrap;
	flex-direction: row;
	justify-content: space-between;
	padding-left: 25px;
}

sidebar .bar-item {
	padding-bottom: 0px;
	padding-left: 15px;
	padding-top: 5px;
	font-size: 18px;
	margin: 0;
}

.clr {
	clear: both;
}

sidebar #adver img {
	width: 70%;
}
</style>
<body>
<sidebar>
<div id="sidebar">
	<div class="side_bar">
		<a href="home?CateId=" style="color: black"><h4 class="bar-item">
				<i style="font-size: 25px;" class="fa-solid fa-mobile-screen-button"></i>Điện
				thoại
			</h4></a>
		<ul class="side-item">
			<li class="side-li"><a class="bar-father" href="home?CateId=1"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> IPhone
					</div>
					<div class="bar-flex">
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="home?ProId=1">IPhone 14 </a></li>
					<li><a class="bar-son" href="home?ProId=9"> IPhone 13 </a></li>
					<li><a class="bar-son" href="home?ProId=17">IPhone 12 </a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="home?CateId=2">
					<div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> SamSung
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div>
			</a>
				<ul class="side-ul">
					<li><a class="bar-son" href="home?ProId=2">SamSung Galaxy
							S23</a></li>
					<li><a class="bar-son" href="home?ProId=10">SamSung Galaxy
							S22</a></li>
					<li><a class="bar-son" href="home?ProId=18">SamSung Galaxy
							Z</a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="home?CateId=3"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Oppo
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="home?ProId=3">Oppo Reno8 T</a></li>
					<li><a class="bar-son" href="home?ProId=11">Oppo Reno8 Z</a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="home?CateId=4"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Xiaomi
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="home?ProId=12">Xiaomi Redmi
							Note 11</a></li>
					<li><a class="bar-son" href="home?ProId=23">Xiaomi 11</a></li>
					<li><a class="bar-son" href="home?ProId=22">Xiaomi 12T</a></li>
					<li><a class="bar-son" href="home?ProId=4">Xiaomi 13</a></li>
					<li><a class="bar-son" href="home?ProId=21">Xiaomi POCO</a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="home?CateId=5"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Vivo
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="home?ProId=13">ViVo T1X</a></li>
					<li><a class="bar-son" href="home?ProId=5">ViVo V23e</a></li>
					<li><a class="bar-son" href="home?ProId=24">ViVo Y22S</a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="home?CateId=6">
					<div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Realme
					</div> <i class="fa-solid fa-chevron-right"></i>
			</a>
				<ul class="side-ul">
					<li><a class="bar-son" href="home?ProId=14">Realme 10 </a></li>
					<li><a class="bar-son" href="home?ProId=6">Realme C35 </a></li>
					<li><a class="bar-son" href="home?ProId=19">Realme 9 Pro </a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="home?CateId=7"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Nokia
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="home?ProId=7">Nokia C31</a></li>
					<li><a class="bar-son" href="home?ProId=15">Nokia C21 Plus</a></li>
					<li><a class="bar-son" href="home?ProId=20">Nokia G11 Plus</a></li>
				</ul></li>
			<li class="side-li"><a class="bar-father" href="home?CateId=8"><div>
						<i style="font-size: 12px;" class="fa-solid fa-star"></i> Asus
					</div>
					<div>
						<i class="fa-solid fa-chevron-right"></i>
					</div></a>
				<ul class="side-ul">
					<li><a class="bar-son" href="home?ProId=8">Asus Rog Phone
							6</a></li>
					<li><a class="bar-son" href="home?ProId=16">Asus Rog Phone
							5S</a></li>
				</ul></li>
		</ul>
	</div>
	<div class="slideshow">
		<div class="slideshow-container">
			<div class="mySlides fade">
				<a href=""> <img src="../access/img/img_slideshow/slide1.png"
					style="width: 650px; height: 330px;"></a>
			</div>
			<div class="mySlides fade">
				<a href=""><img src="../access/img/img_slideshow/slide2.png"
					style="width: 650px; height: 330px;"></a>
			</div>
			<div class="mySlides fade">
				<a href=""><img src="../access/img/img_slideshow/slide3.png"
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
			<a href=""><img src="../access/img/img_slideshow/ad1.png" alt=""></a>
		</div>
		<div class="adver_2">
			<a href=""><img src="../access/img/img_slideshow/ad2.png" alt=""></a>
		</div>
		<div>
			<a href=""><img src="../access/img/img_slideshow/ad3.png" alt=""></a>
		</div>
	</div>


</div>
</sidebar>
</body>
<script src="../access/js/slideshow.js"></script>

