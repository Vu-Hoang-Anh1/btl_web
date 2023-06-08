<%@ page import="model.User" %>
<%@ page import="model.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.OrderDao" %>
<%@ page import="connection.DbCon" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/05/2023
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    List<Order> orders = null;
    if (auth != null) {
        request.setAttribute("person", auth);
        OrderDao orderDao  = new OrderDao(DbCon.getConnection());
        orders = orderDao.userOrders(auth.getId());
    }else {
        response.sendRedirect("login.jsp");
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="acsess/css/order.css">
    <title>order</title>
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
<div class="container">
    <div class="card-header my-3">All Orders</div>
    <table class="table table-light">
        <thead>
        <tr>
            <th scope="col">Date</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col">Quantity</th>
            <th scope="col">Price</th>
            <th scope="col">Cancel</th>
        </tr>
        </thead>
        <tbody>

        <%
            if(orders != null){
                for(Order o:orders){%>
        <tr>
            <td><%=o.getDate() %></td>
            <td><%=o.getName() %></td>
            <td><%=o.getCategory() %></td>
            <td><%=o.getQunatity() %></td>
            <td><%=o.getPrice() %></td>
            <td><a class="btn btn-sm btn-danger" href="cancel-order?id=<%=o.getOrderId()%>">Hủy đặt hàng</a></td>
        </tr>
        <%}
        }
        %>

        </tbody>
    </table>
</div>
</body>
</html>
