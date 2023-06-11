

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
        a{
        text-decoration: none;
        }

    </style>
</head>
<body>
    <div class="sidebar_admin">
        <div class="sidebar__logo">
            <img class="sidebar__logo__img" src="acsess/img/hala sidebar.png" alt="">
        </div>
        <ul class="sidebar__list">
            

            <a class="sidebar__list__item" href="${pageContext.request.contextPath}/Servlet_qlsp">
                <i class="fas fa-th-large sidebar__list__icon"></i>
                <p class="sidebar__list__text">Quản Lý Sản phẩm</p>
            </a> 
            <a class="sidebar__list__item" href="">
                <i class="fas fa-user sidebar__list__icon"></i>
               <p class="sidebar__list__text">Nhân viên</p>
            </a>
            <a class="sidebar__list__item" href="${pageContext.request.contextPath}/Servlet_qlnd">
                <i class="fas fa-users sidebar__list__icon"></i>
                <p class="sidebar__list__text">Quản Lý Người Dùng</p>
            </a>
            <a class="sidebar__list__item" href="">
                <i class="fas fa-phone sidebar__list__icon"></i>
                <p class="sidebar__list__text">Liên hệ</p>
            </a>

        </ul>
    </div>
</body>
</html>