<%@ page import="model.User" %>
<%@ page import="model.Cart" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/05/2023
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        response.sendRedirect("index.jsp");
    }
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet" href="acsess/css/login.css">
<%--    <script src="acsess/js/showlogin.js" defer></script>--%>
    <title>login</title>
</head>
<body>
<div>
    <form action="user-login" method="post">
        <div class="login js__login">
            <div class="login__container js__login__container">
                <div class="login__close js__login__close">
                    <i class="fas fa-times login__close__icon"></i>
                </div>
                <div class="login__header">
                    <h4>đăng nhập tài khoản hala phone</h4>
                </div>
                <div class="login__body">
                    <input type="text" class="login__form" name="login-email" placeholder="Nhập email hoặc số điện thoại">
                    <input type="password" class="login__form" name="login-password" placeholder="Nhập mật khẩu">
                </div>
                <div class="login__help">
                    <a href="#" class="login__help__link">Quên mật khẩu?</a>
                </div>
                <div class="login__footer">
                    <button class="login__butlogin">
                        đăng nhập
                    </button>
                    <p class="login__hoac">Hoặc</p>
                    <button class="login__butgg">
                        <i class="fab fa-google"></i>
                        Đăng nhập bằng tài khoản Google
                    </button>
                    <div class="login__helptk">
                        <p class="login__helptk__text">
                            Bạn chưa có tài khoản?
                            <a href="" class="login__linkdk">Đăng kí ngay</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
