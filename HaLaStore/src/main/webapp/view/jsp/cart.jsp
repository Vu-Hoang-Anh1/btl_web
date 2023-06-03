<%@ page import="model.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="database.ProductDAO" %>
<%@ page import="database.DBContext" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 03/06/2023
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
//    User auth = (User) request.getSession().getAttribute("auth");
//    if (auth != null) {
//        request.setAttribute("person", auth);
//    }
//    lay ra sp trong cart_list
    ArrayList<Cart> cart_list= (ArrayList<Cart>) session.getAttribute("cart_list");
    List<Cart> cartProduct=null;
    if(cart_list!=null){
        ProductDAO pDao=new ProductDAO(DBContext.getConnection());
        cartProduct=pDao.getCartProducts(cart_list);
//        tinh total
        double total=pDao.getTotalCartPrice(cart_list);
        request.setAttribute("cart_list",cart_list);
        request.setAttribute("total",total);
    }
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="access/stylecss/cart.css">
    <title>cart</title>
</head>
<body>
<div class="header">

    <div class="header__logo">
        <a href="index.jsp">
            <img src="acsess/img/hala_Phone__1_-removebg-preview.png" alt="" class="header__logo--img">
        </a>
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


    <div class="header__bag">
        <i class="fas fa-shopping-bag header__bag--icon"></i>
        <a href="cart.jsp">Giỏ hàng</a>
    </div>
<%--    <%--%>
<%--        if(auth!=null){--%>
<%--    %>--%>
    <div class="header__shipping">
        <i class="fas fa-sign-out-alt"></i>
        <div class="header__shipping--dis">
            <a class="shpping__a" href="log-out">Đăng xuất</a>
        </div>
    </div>
<%--    <%}else {%>--%>
    <div class="header__member">
        <i class="fas fa-user header__member--icon"></i>
        <a class="shpping__a" href="login.jsp">Đăng nhập</a>
    </div>
<%--    <%}%>--%>
</div>

<%--giao dien chinh--%>
<div class="container">
    <div class="product">
        <%
            if(cart_list!=null){
                for(Cart c:cartProduct){%>
        <div class="product__item">
            <div class="p__img">
                <img src="product-img/<%= c.getImagePro()%>" alt="" >
            </div>

            <div class="p__ifo">
                <div class="p__name">
                    <h3 class="namep"><%=c.getNamePro()%></h3>
                    <a href="remove-item?id=<%=c.getProId()%>">
                        <i class="fas fa-trash-alt icon__namep"></i>
                    </a>
                </div>

                <div class="p__category">
                    <h3 class="category__name">Màu:</h3>
<%--                    <div class="category"><%=c.getCateId()%></div>--%>
                </div>

                <div class="p__price">
                    <h3 class="p__price__number"><%=c.getPrice()%> đ</h3>

                    <form action="order-now" method="post" class="form-inline">
                        <input type="hidden" name="id" value="<%=c.getProId()%>" class="form-input" />
                        <div class="form-group d-flex justify-content-between">
                            <a class="btn bnt-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%=c.getProId()%>"
                            ><i class="fas fa-plus-square"></i
                            ></a>
                            <input
                                    type="text"
                                    name="quantity"
                                    class="form-control"
                                    value="<%=c.getQuantity()%>"
                                    readonly
                            />
                            <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%=c.getProId()%>"
                            ><i class="fas fa-minus-square"></i
                            ></a>
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm">
                            Buy
                        </button>
                    </form>
                </div>
            </div>
        </div>
        <%}
        }
        %>
    </div>

    <div class="content"></div>

    <div class="total">
        <div class="total__header">
            <h3 class="total__name">Tổng tiền:</h3>
            <h3 class="total__number">${(total>0)?total:0} đ</h3>
        </div>
        <a href="#" class="total__a">
            <div class="total__action">
                <h1 class="total__title">Check out</h1>
            </div>
        </a>
    </div>
</div>
</body>
</html>