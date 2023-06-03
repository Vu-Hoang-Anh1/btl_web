<%-- 
    Document   : qlsp_sp
    Created on : May 21, 2023, 2:21:19 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>

            .sp h2{
                text-align: center;
                margin: 20px;
            }

            .sp h3 {
                margin: 10px;
            }

            .sp .sanpham {
                float: left;
                width: 25%;
                margin-left: 50px;
                font-size: 16px;
            }

            .sp .sanpham label{
                font-size: 18px;
            }

            .sp .sanpham input {
                width: 300px;
                height: 30px;
                border: 2px solid gray;
                border-radius: 7px;
                font-size: 16px;
            }

            .sp .sanpham select {
                width: 200px;
                height: 30px;
                border: 2px solid gray;
                border-radius: 7px;
                font-size: 16px;
            }

            .sp .sanpham .themhinhanh {
                border: none;
                border-radius: none;
            }

            .sp .thongsokithuat {
                float: right;
                width: 60%;
            }

            .sp .thongsokithuat label {
                display: inline-block;
                width: 150px;
                font-size: 18px;
                margin: 5px;

            }
            
            .sp input{
                padding: 5px;
            }

            .sp .thongsokithuat input {
                width: 350px;
                height: 27px;
                border: 2px solid gray;
                border-radius: 7px;
                
            }

            .clr {
                clear: both;
            }

            .sp .thongtinsanpham {
                margin-left: 50px;
            }

            .sp .thongtinsanpham textarea{
                width: 90%;
                height: 150px;
                padding: 10px;
                font-size: 18px;
            }

            .sp .submit {
                text-align: center;
                margin: 50px;
            }

            .sp .submit input {
                width: 200px;
                height: 50px;
                font-size: 20px;
                font-weight: bold;
                color: white;
                background-color: rgb(2, 159, 202);
                border: rgb(2, 159, 202);
                border-radius: 10px;
            }

            .sp .submit input:hover {
                background-color: rgb(0, 119, 152);
            }
            
        </style>
    </head>
    <body>
        <c:set var="p" value="${requestScope.pro}" />
        <c:set var="d" value="${requestScope.des}" />
        <div class="sp">
            <form action="Servlet_themvasua" method="post" enctype="multipart/form-data">
                <div class="sanpham">
                    <h3>Sản phẩm:</h3>
                    <label for="NamePro">Tên sản phẩm: </label><br/>
                    <input type="text" name="NamePro" value="${p.namePro}"/><br/><br/>
                    <c:set value="" var="cate"/>
                    <label for="CateId">Phân loại:</label><br/>
                    <select name="CateId">
                        <option value="0" disabled selected>-- Chọn loại sản phẩm --</option>
                        <c:forEach items="${requestScope.cate}" var="cate">
                            <option value="${cate.cateId}" <c:if test="${cate.cateId == p.cateId.cateId}" >selected</c:if>>${cate.nameCate}</option>
                            
                        </c:forEach>
                    </select><br/><br/>
                    <label for="Price">Giá tiền: </label><br/>
                    <input type="text" name="Price" value="${p.price}"/><br/><br/>
                    <label for="Quantity">Số lượng: </label><br/>
                    <input type="number" name="Quantity" value="${p.quantity}"/><br/><br/>
                    <h3>Hình ảnh sản phẩm:</h3>
                    <c:if test="${p.imagePro != null}">
                        <img src="${pageContext.request.contextPath}/view/access/img/img_product/${p.imagePro}" alt="${p.namePro}" width="100px" height="110px">
                    </c:if>
                        <input type="file" name="ImagePro" class="themhinhanh"><br/><br/>
                </div>


                <div class="thongsokithuat">
                    <h3>Thông số kĩ thuật: </h3>
                    <label for="MatKinhCamUng">Mặt kính cảm ứng: </label>
                    <input type="text" name="MatKinhCamUng" value="${d.matKinhCamUng}"/><br/>
                    <label for="DoPhanGiai">Độ phân giải: </label>
                    <input type="text" name="DoPhanGiai" value="${d.doPhanGiai}"/><br/>
                    <label for="ManHinhRong">Màn hình rộng:</label>
                    <input type="text" name="ManHinhRong" value="${d.manHinhRong}"/><br/>
                    <label for="CameraSau">Camera sau:</label>
                    <input type="text" name="CameraSau" value="${d.cameraSau}"/><br/>
                    <label for="QuayPhim">Quay phim:</label>
                    <input type="text" name="QuayPhim" value="${d.quayPhim}"/><br/>
                    <label for="HeDieuHanh">Hệ điều hành:</label>
                    <input type="text" name="HeDieuHanh" value="${d.heDieuHanh}"/><br/>
                    <label for="Chipset">Chipset:</label>
                    <input type="text" name="Chipset" value="${d.chipset}"/><br/>
                    <label for="Ram">Ram:</label>
                    <input type="text" name="Ram" value="${d.ram}"/><br/>
                    <label for="Rom">Rom:</label>
                    <input type="text" name="Rom" value="${d.rom}"/><br/>
                    <label for="Pin">Pin:</label>
                    <input type="text" name="Pin" value="${d.pin}"/><br/>
                </div>

                <div class="clr"></div>

                <div class="thongtinsanpham">
                    <h3>Thông tin sản phẩm:</h3>
                    <textarea rows="10" cols="100" name="ThongTinSanPham"><c:forEach items="${d.thongTinSanPham}" var="i">
${i}</c:forEach></textarea><br/>
                </div>

                <div class="thongtinsanpham">
                    <h3>Đặc điểm nội bật: </h3>
                    <textarea rows="10" cols="100" name="DacDiemNoiBat"><c:forEach items="${d.dacDiemNoiBat}" var="i">
${i}</c:forEach></textarea><br/>
                </div>
                <c:if test="${requestScope.pro != null}">
                    <input type="hidden" name="ProId" value="${requestScope.pro.proId}"/>
                </c:if>
                <div class="submit">
                    <input type="submit" value="SUBMIT"/>
                </div>

            </form>
        </div>
    </body>
</html>