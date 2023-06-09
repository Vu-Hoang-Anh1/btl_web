<%@page import="model.user"%>
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
    user auth = (user) request.getSession().getAttribute("user");
   if (auth != null) {
        request.setAttribute("person", auth);
    }
//    lay ra sp trong cart_list
    ArrayList<Cart> cart_list= (ArrayList<Cart>) session.getAttribute("cart-list");
    List<Cart> cartProduct=null;
    if(cart_list!=null){
        ProductDAO pDao=new ProductDAO(DBContext.getConnection());
        cartProduct=pDao.getCartProducts(cart_list);
//        tinh total
        long total=(long)pDao.getTotalCartPrice(cart_list);
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/access/stylecss/cart.css">
    
    <title>cart</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%--giao dien chinh--%>
<div class="container">
    <div class="product">
        <%
            if(cart_list!=null){
                for(Cart c:cartProduct){%>
        <div class="product__item">
            <div class="p__img">
                <img src="${pageContext.request.contextPath}/view/access/img/img_product/<%= c.getImagePro()%>" alt="" >
            </div>

            <div class="p__ifo">
                <div class="p__name">
                    <h3 class="namep"><%=c.getNamePro()%></h3>
                    <a href="${pageContext.request.contextPath}/remove-item?id=<%=c.getProId()%>">
                        <i class="fas fa-trash-alt icon__namep"></i>
                    </a>
                </div>

                <div class="p__category">
                    <h3 class="category__name">Màu:</h3>
<%--                    <div class="category"><%=c.getCateId()%></div>--%>
                </div>

                <div class="p__price">
                    <h3 class="p__price__number"><%=c.getPrice()%> đ</h3>

                    <form action="${pageContext.request.contextPath}/order-now" method="post" class="form-inline">
                        <input type="hidden" name="id" value="<%=c.getProId()%>" class="form-input" />
                        <div class="form-group d-flex justify-content-between">
                            <a class="btn bnt-sm btn-incre" href="${pageContext.request.contextPath}/quantity-inc-dec?action=inc&id=<%=c.getProId()%>"
                            ><i class="fas fa-plus-square"></i
                            ></a>
                            <input
                                    type="text"
                                    name="quantity"
                                    class="form-control"
                                    value="<%=c.getQuantity()%>"
                                    readonly
                            />
                            <a class="btn btn-sm btn-decre" href="${pageContext.request.contextPath}/quantity-inc-dec?action=dec&id=<%=c.getProId()%>"
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
        <a href="${pageContext.request.contextPath}/check-out" class="total__a">
            <div class="total__action">
                <h1 class="total__title">Check out</h1>
            </div>
        </a>
    </div>
</div>
</body>
</html>