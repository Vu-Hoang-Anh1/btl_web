<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hala phone</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/access/stylecss/breadcrumb.css">
</head>
<body>
	<div>
		<%@include file="header.jsp"%></div>
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<div class="breadcrumb__links">
							<a href="home" style="color: black"><div>
									<i class="fa-solid fa-house"></i>
								</div>
								<div>Trang chủ</div></a> <i class="fa-solid fa-chevron-right"></i> <span>Kết
								quả tìm kiếm cho: 'null'</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="content">
		<h2>Không có kết quả bạn cần tìm</h2>
	</div>
	<div><%@include file="footer.jsp"%></div>
</body>
</html>