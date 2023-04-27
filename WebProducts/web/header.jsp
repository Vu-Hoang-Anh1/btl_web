<%-- 
    Document   : header
    Created on : Apr 20, 2023, 12:23:04 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <link rel="stylesheet" href="css/header.css"/>
        <script src="js/showlogin.js" defer></script>
        <title>Web BTL</title>
    </head>
    <style>
        header{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
.header{
    position: fixed;
    right: 0px;
    left: 0px;
    top: 0px;
    background-color: #c40016;
    display: flex;
    height: 64px;
    align-items: center;
    justify-content: center;
    z-index: 1;
}
.header__logo{
    cursor: pointer;
}
.header__logo--img{
    max-width: 64px;
    margin: 0 24px;
}
.header__category{
    display: inline-block;
    width: 108px;
    height: 40px;
    background-color: #cc2f40;
    border-radius: 10px;
    display: flex;
    align-items: center;
    padding: 3px 5px;
    margin-right: 15px;
    color: #fff;
    cursor: pointer;

}
.header__category--icon{
    padding: 0 4px;
}
.header__location{
    width: 124px;
    height: 40px;
    background-color: #cc2f40;
    border-radius: 10px;
    display: flex;
    align-items: center;
    padding: 3px 5px;
    margin-right: 15px;
    color: #fff;
    cursor: pointer;
}

.header__location--icon{
    margin: 0 4px;
}
.header__location__display{
    
}
.header__search{
    width: 300px;
    height: 34px;
    margin-right: 15px;
    display: flex;
    position: relative;
    margin-right: 15px;
    align-items: center;

}
.header__search__ip{
    width: 100%;
    height: 100%;
    outline: none;
    /* mats vien den cuar iput khi nhap */
    border: 1px solid rgba(0,0,0,0.1);
    border-left: none;
    border-top-right-radius: 8px;
    border-bottom-right-radius: 8px;
    padding-left: 5px;
    color: rgba(0,0,0,0.6);
}
.header__search__ic{
    background-color: white;
    height: 100%;
    display: flex;
    align-items: center;
    border-top-left-radius: 8px;
    border-bottom-left-radius: 8px;
}
.header__search--icon{
    color: rgba(0,0,0,0.6);
    margin-left: 4px;
}
.header__smart{
    display: inline-block;
    width: 130px;
    height: 40px;
    border-radius: 10px;
    display: flex;
    align-items: center;
    padding: 3px 5px;
    margin-right: 15px;
    color: #fff;
}
.header__smart:hover{
    cursor: pointer;
    background-color: #cc2f40;
}
.header__samrt--dis{
    margin-left: 6px;
}
.header__location__map{
    display: inline-block;
    width: 100px;
    height: 40px;
    border-radius: 10px;
    display: flex;
    align-items: center;
    padding: 3px 5px;
    margin-right: 15px;
    color: #fff;

}
.header__location__map:hover{
    cursor: pointer;
    background-color: #cc2f40;
}
.header__location__map--dis{
    margin-left: 6px;
}
.header__shipping{
    display: inline-block;
    width: 100px;
    height: 40px;
    border-radius: 10px;
    display: flex;
    align-items: center;
    padding: 3px 5px;
    margin-right: 15px;
    color: #fff;

}
.header__shipping:hover{
    cursor: pointer;
    background-color: #cc2f40;
}
.header__shipping--dis{
    margin-left: 6px;
}
.header__bag{
    display: inline-block;
    width: 100px;
    height: 40px;
    border-radius: 10px;
    display: flex;
    align-items: center;
    padding: 3px 5px;
    margin-right: 15px;
    color: #fff;

}
.header__bag:hover{
    cursor: pointer;
    background-color: #cc2f40;
}
.header__bag--icon{
    margin-right: 6px;
}
.header__member{
    display: flex;
    flex-direction: column;
    width: 90px;
    height: 40px;
    background-color: #cc2f40;
    border-radius: 10px;
    display: flex;
    align-items: center;
    padding: 3px 5px;
    margin-right: 15px;
    color: #fff;
    border: none;

}
.header__member:hover{
    cursor: pointer;
}
.header__member--icon{
    margin-right: 6px;
}

/* login */
.login{
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.3);
    display: none;
    align-items: center;
    justify-content: center;
}
.login.open{
    display: flex;
}
.login__container{
    background-color: #fff;
    width: 500px;
    height: 426px;
    position: relative;
    border-radius: 1.02rem;
}
.login__close{
    position: absolute;
    right: 5px;
    top: 6px;
    background-color: rgba(0, 0, 0, 0.2);
    padding: 4px 8px;
    border-radius: 1.05rem;
}
.login__close:hover{
    cursor: pointer;
    background-color: red;
    color: #fff;
}
.login__close__icon{
 color: #fff;
}
.login__header{
    font-size: 16px;
    text-transform: uppercase;
    color: #d70018;
    text-align: center;
    padding: 12px;
    font-family: sans-serif;
}

.login__body{

}
.login__form{
    width: 100%;
    max-width: 440px;
    padding: 11px 11px;
    margin: 9px 30px;
    border: 1px solid #dbdbdb;
    border-radius: 4px;
}
.login__help{

}
.login__help__link{
    float: right;
    margin-right: 30px;
    text-decoration: none;
    font-size: 15px;
    color: #000;
}
.login__help__link:hover{
    text-decoration: underline;
}
.login__footer{
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 53px;
    max-width: 440px;
    margin-left: 30px;
}
.login__butlogin{
    width: 100%;
    font-size: 17px;
    text-transform: uppercase;
    padding: 8px 17px;
    font-weight: 600;
    color: #fff;
    background-color: #d70018;
    border-radius: 4px;
    border: none;
}
.login__butlogin:hover{
    cursor: pointer;
}
.login__hoac{
    margin: 13px;
}
.login__butgg{
    width: 100%;
    font-size: 17px;
    padding: 8px 17px;
    color: #cc0f35;
    background-color: #feecf0;
    border-radius: 4px;
    border: none;
}
.login__butgg:hover{
    cursor: pointer;
}
.login__helptk{

}
.login__helptk__text{
    font-size: 17px;
    margin: 25px;
}
.login__linkdk{
    text-decoration: none;
    color: #485fc7;
}
.content{
    
}
    </style>
    <body>
        <header>
            <div class="header">

            <div class="header__logo">
                <img src="img/img_logo/hala_Phone__1_-removebg-preview.png" alt="" class="header__logo--img">
            </div>

            <div class="header__category">
                <i class="far fa-list-alt header__category--icon"></i>
                <p>Danh mục</p>
            </div>

            <div class="header__location">
                <i class="fas fa-map-marker-alt header__location--icon"></i>
                <div class="header__location__display">
                    <p>Xem giá tại</p>
                    <p>Hà Nội</p>
                </div>
                <i class="fas fa-angle-down header__location--icon"></i>
            </div>

            <div class="header__search">
                <div class="header__search__ic">
                <i class="fas fa-search header__search--icon"></i>
                </div>
                <input class="header__search__ip" type="text" placeholder="Bạn cần tìm gì ?">
            </div>

            <div class="header__smart">
                <i class="fas fa-phone-alt"></i>
                <div class="header__samrt--dis">
                    <p>Gọi mua hàng</p>
                    <p>8888.8888</p>
                </div>
            </div>
             
            <div class="header__location__map">
                <i class="fas fa-map-marked-alt"></i>
                <div class="header__location__map--dis">
                    <p>Cửa hàng</p>
                    <p>gần bạn</p>
                </div>
            </div>

            <div class="header__shipping">
                <i class="fas fa-shipping-fast"></i>
                <div class="header__shipping--dis">
                    <p>Tra cứu</p>
                    <p>đơn hàng</p>
                </div>
            </div>

            <div class="header__bag">
                <i class="fas fa-shopping-bag header__bag--icon"></i>
                <p>
                    Giỏ hàng
                </p>
            </div>

            <button class="header__member js__member">
                <i class="fas fa-user header__member--icon"></i>
                <p>Đăng nhập</p>
            </button>

        </div>

        <form action="">
            <div class="login js__login">
                <div class="login__container js__login__container">
                    <div class="login__close js__login__close">
                        <i class="fas fa-times login__close__icon"></i>
                    </div>
                    <div class="login__header">
                        <h4>đăng nhập tài khoản hala phone</h4>
                    </div>
                    <div class="login__body">
                        <input type="text" class="login__form" placeholder="Nhập email hoặc số điện thoại">
                        <input type="password" class="login__form" placeholder="Nhập mật khẩu">
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
        
        <div class="content">

        </div>
        </header>
        
        
    </body>
</html>