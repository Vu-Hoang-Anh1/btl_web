
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/view/access/stylecss/style.css">

</head>
<style>
footer {
	margin-bottom: 0;
}
</style>
<body>

	<%@include file="header.jsp"%>
	<%@include file="slidebar.jsp"%>

	<div class="new">
		<h3>
			<b>TIN CÔNG NGHỆ </b>
		</h3>
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
