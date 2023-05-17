<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smember</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/access/stylecss/smember.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="box">
		<div class="k1">
			<div class="k1_1">
				<a href="#"><i class="fa-solid fa-arrow-left"></i></a>
			</div>
			<div class="k1_2">
				<b>GÓP Ý VÀ PHẢN HỒI</b>
			</div>
		</div>
		<div class="k2">
			<div class="k2_1">
				<div>
					<img src=${pageContext.request.contextPath}/view/access/img/img_smember/smember.png" alt="Smember">
				</div>
				<p>Mời bạn đánh giá mức độ hài lòng về chương trình ưu đãi
					Smember của Halaphone. Hãy cho chúng mình thêm góp ý để cải thiện
					tốt hơn</p>
			</div>
			<iframe
				src="https://docs.google.com/forms/d/e/1FAIpQLSdAx6U0pQfJHHXs2ouh7Gd7In8h5hwlmJ-c73A_amB9aRDYwA/viewform?embedded=true"
				width="630" height="520" frameborder="0" marginheight="0"
				marginwidth="0">Đang tải…</iframe>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>