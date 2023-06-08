<%@ page import="model.User" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.ProductDao" %>
<%@ page import="connection.DbCon" %>
<%@ page import="model.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        request.setAttribute("person", auth);
    }
//    in ra product
    ProductDao pd = new ProductDao(DbCon.getConnection());
    List<Product> products = pd.getAllProducts();

    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="acsess/css/index.css">
<%--    <script src="acsess/js/showlogin.js" defer></script>--%>
    <title>Web BTL</title>
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
        <a href="cart.jsp">Giỏ hàng<span class="badge badge-danger">${cart_list.size()}</span></a>
    </div>
<%
    if(auth!=null){
%>
    <div class="header__shipping">
        <i class="fas fa-sign-out-alt"></i>
        <div class="header__shipping--dis">
            <a class="shpping__a" href="log-out">Đăng xuất</a>
        </div>
    </div>
<%}else {%>
    <div class="header__member">
        <i class="fas fa-user header__member--icon"></i>
        <a class="shpping__a" href="login.jsp">Đăng nhập</a>
    </div>
<%}%>
</div>

<div class="content">
    <%
        if (!products.isEmpty()) {
            for (Product p : products) {%>
    <div class="product">
        <div class="product__anh">
            <img src="product-img/<%= p.getImage()%>" alt="" class="product__img">
        </div>
        <div class="product__infomation">
            <h4 class="product__title"><%= p.getName()%></h4>
            <h5 class="product__price">Price : $<%= p.getPrice()%></h5>
            <h5 class="product__category">Category :<%= p.getCategory()%></h5>
        </div>
        <div class="product__action">
            <a href="add-to-cart?id=<%= p.getId() %>" class="product__cart">Thêm vào giỏ</a>
            <a href="order-now?quantity=1&id=<%=p.getId()%>" class="product__cart">Mua ngay</a>
        </div>
    </div>
    <% }
    }%>

</div>

</body>
</html>