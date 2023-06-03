
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<c:set var="p" value="${requestScope.pro}" />
<c:set var="d" value="${requestScope.des}" />
<title>${p.namePro}</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/access/stylecss/describe.css">
</head>
<script>
        function increaseQuantity() {
            var quantity = document.getElementById("quantity_order");
            var value = parseInt(quantity.value);
            var price = document.getElementById("price");
            if (value < parseInt(quantity.max)) {
              quantity.value = value + 1;
              price.value = (priceValue + parseFloat(price.dataset.unitPrice)).toFixed(2);
            }
          }

          function decreaseQuantity() {
            var quantity = document.getElementById("quantity_order");
            var value = parseInt(quantity.value);
            if (value > parseInt(quantity.min)) {
              quantity.value = value - 1;
            }
          }
          
          /* function increaseQuantity() {
              var quantity = document.getElementById("quantity_order");
              var price = document.getElementById("price");
              var value = parseInt(quantity.value);
              var priceValue = parseFloat(price.value);

              if (value < parseInt(quantity.max)) {
                  quantity.value = value + 1;
                  price.value = (priceValue + parseFloat(price.dataset.unitPrice)).toFixed(2);
              }
          }

          function decreaseQuantity() {
              var quantity = document.getElementById("quantity_order");
              var price = document.getElementById("price");
              var value = parseInt(quantity.value);
              var priceValue = parseFloat(price.value);

              if (value > parseInt(quantity.min)) {
                  quantity.value = value - 1;
                  price.value = (priceValue - parseFloat(price.dataset.unitPrice)).toFixed(2);
              }
          } */
      

    </script>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="product">
		<div class="product_name">
			<h2>${p.namePro}</h2>
			<hr>
		</div>
		<div class="product_img">
			<img src="${pageContext.request.contextPath}/view/access/img/img_product/${p.imagePro}" alt="${p.namePro}">
		</div>
		<div class="product_content">
			<h3>Thông số kĩ thuật</h3>
			<div class="product_content_features">
				<label>Mặt kính cảm ứng:</label> <span>${d.matKinhCamUng}</span>
			</div>
			<div class="product_content_features">
				<label>Độ phân giải:</label> <span>${d.doPhanGiai}</span>
			</div>
			<div class="product_content_features">
				<label>Màn hình rộng:</label> <span>${d.manHinhRong}</span>
			</div>
			<div class="product_content_features">
				<label>Camera sau:</label> <span>${d.cameraSau}</span>
			</div>
			<div class="product_content_features">
				<label>Quay Phim:</label> <span>${d.quayPhim}</span>
			</div>
			<div class="product_content_features">
				<label>Hệ điều hành:</label> <span>${d.heDieuHanh}</span>
			</div>
			<div class="product_content_features">
				<label>Chipset:</label> <span>${d.chipset}</span>
			</div>
			<div class="product_content_features">
				<label>RAM:</label> <span>${d.ram}</span>
			</div>
			<div class="product_content_features">
				<label>Bộ nhớ trong (Rom):</label> <span>${d.rom}</span>
			</div>
			<div class="product_content_features">
				<label>Dung lượng pin:</label> <span>${d.pin}</span>
			</div>
		</div>

		<div class="product_order">
			<div class="product_order_price">
				<label>Số lượng: </label> <a class="fa-solid fa-minus"
					onclick="decreaseQuantity()"></a> <input type="number"
					id="quantity_order" name="quantity_order" readonly value="1"
					min="1" max="${p.quantity}"> <a class="fa-solid fa-plus"
					onclick="increaseQuantity()"></a> <br /> <label><b>Giá
						tiền: </b></label> <span><b><fmt:formatNumber value="${p.price}"
							pattern="###,###,###" /> đ</b></span>

			</div>

			<div class="product_order_button">
				<div class="button_1">
					<a href="#"><b>MUA NGAY</b></a>
				</div>
				<div class="button_2">
					<a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
				</div>
			</div>
		</div>

		<div class="product_infor">
			<h3>Thông tin sản phẩm:</h3>
			<hr>
			<ul>
				<c:forEach items="${d.thongTinSanPham}" var="i">
					<li>${i}</li>
				</c:forEach>
			</ul>
			<br>
			<h3>Đặc điểm nổi bật:</h3>
			<hr>
			<ul>
				<c:forEach items="${d.dacDiemNoiBat}" var="i">
					<li>${i}</li>
				</c:forEach>
			</ul>

			<br> <a href="${d.newId.link}" target="_blank">Xem chi tiết
			</a>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
