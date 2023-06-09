<%-- 
    Document   : admin
    Created on : May 21, 2023, 11:30:10 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--<link rel="stylesheet" href="acsess/css/admin.css">-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <title>Document</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .sidebar_admin{
            margin-top: 50px;
            width: 240px;
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
        }
        .sidebar__logo{
            text-align: center;
        }
        .sidebar__logo__img{
            width: 154px;
        }
        .sidebar__list{
            list-style: none;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .sidebar__list__item{
            display: flex;
            padding: 12px 8px;
            text-decoration: none;
            color: #000;
        }
        .sidebar__list__icon{
            width: 50px;
            text-align: center;
        }
        .sidebar__list__item:hover{
            cursor: pointer;
            background-color: #95d0ff;
            border-radius: 1.5rem;
            transform: translateX(10px);
        }

    </style>
</head>
<body>
    <div class="sidebar_admin">
        <div class="sidebar__logo">
            <img class="sidebar__logo__img" src="acsess/img/hala sidebar.png" alt="">
        </div>
        <ul class="sidebar__list">
            <a class="sidebar__list__item" href="">
                <i class="fa-solid fa-gauge-high sidebar__list__icon"></i>
                <p class="sidebar__list__text">Dashboard</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fa-solid fa-print sidebar__list__icon"></i>
                <p class="sidebar__list__text">Đặt hàng trực tiếp</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="far fa-file-alt sidebar__list__icon"></i>
                <p class="sidebar__list__text">Đơn hàng</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fa-solid fa-money-bill sidebar__list__icon"></i>
                <p class="sidebar__list__text">Hóa đơn</p>
            </a>
            <a class="sidebar__list__item" href="Servlet_qlsp">
                <i class="fas fa-th-large sidebar__list__icon"></i>
                <p class="sidebar__list__text">Sản phẩm</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fas fa-list sidebar__list__icon"></i>
               <p class="sidebar__list__text">Danh mục</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fas fa-newspaper sidebar__list__icon"></i>
                <p class="sidebar__list__text">Tin tức</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fas fa-sliders-h sidebar__list__icon"></i>
              <p class="sidebar__list__text">Slides</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="far fa-percent sidebar__list__icon"></i>
                <p class="sidebar__list__text">Vouchers</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fas fa-user sidebar__list__icon"></i>
               <p class="sidebar__list__text">Nhân viên</p>
            </a>
            <a class="sidebar__list__item" href="Servlet_qlnd">
                <i class="fas fa-users sidebar__list__icon"></i>
                <p class="sidebar__list__text">Khách hàng</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fas fa-phone sidebar__list__icon"></i>
                <p class="sidebar__list__text">Liên hệ</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fas fa-comment-dots sidebar__list__icon"></i>
                <p class="sidebar__list__text">Chat</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fas fa-comments sidebar__list__icon"></i>
                <p class="sidebar__list__text">Bình luận</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fas fa-address-book sidebar__list__icon"></i>
                <p class="sidebar__list__text">Địa chỉ</p>
            </a>
        </ul>
    </div>
</body>
</html>