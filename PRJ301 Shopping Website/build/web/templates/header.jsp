<%-- Created on : Jul 2, 2023, 10:29:31 AM  by DuyDuc94--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    User_Account user = (User_Account) session.getAttribute("user");
    WishlistDAO wishlistDAO = new WishlistDAO();
    List<Product> wishlist = new ArrayList<>();
    int numberWishlist = 0;
    if (user != null) {
        //If the user is logged in, get infomation about wishlist
        wishlist = wishlistDAO.getWishlist(user.getID());
        if(wishlist != null){
            numberWishlist = wishlist.size();
        }
    }
%>

<c:set var="user" value="<%=user%>"/>
<c:set var="numberOfWishList" value="<%=numberWishlist%>"/>
<c:set var="wishlist" value="<%=wishlist%>"/>

<!-- HEADER -->
<header>
    <!-- TOP HEADER -->
    <div id="top-header">
        <div class="container">
            <ul class="header-links pull-left">
                <li><a href="#"><i class="fas fa-phone-alt"></i>+84 912 312 312</a></li>
                <li><a href="mailto:duyduc.luonghuu@gmail.com"><i class="fas fa-paper-plane"></i></i>duyduc.luonghuu@gmail.com</a></li>
                <li><a href="https://www.google.com/maps/place/H%C3%A0+N%E1%BB%99i,+Ho%C3%A0n+Ki%E1%BA%BFm,+H%C3%A0+N%E1%BB%99i,+Vi%E1%BB%87t+Nam/@21.0227384,105.8163641,14z/data=!4m6!3m5!1s0x3135ab9bd9861ca1:0xe7887f7b72ca17a9!8m2!3d21.0277644!4d105.8341598!16zL20vMGZuZmY?hl=vi-VN&entry=ttu" target="_blank"><i class="fas fa-map-marker-alt"></i></i>HaNoi, VietNam</a></li>
            </ul>
            <ul class="header-links pull-right">
                <li>
                    <div class="dropdown">
                        <a href="#" data-toggle="dropdown" aria-expanded="true"><i class="fas fa-globe"></i>English</a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="#">English</a><br>
                            <a class="dropdown-item" href="#">Vietnamese</a>
                        </div>
                    </div>
                </li>
                <c:if test="${user==null}">
                    <li>
                        <a href="login"><i class="fas fa-sign-in-alt"></i>Login</a>
                    </li>
                    <li>
                        <a href="register"><i class="fas fa-user-plus"></i>Register</a>
                    </li>
                </c:if>
                <c:if test="${user!=null}">
                    <li>
                        <a href="account"><i class="fas fa-user"></i>${user.getUsername()}</a>
                    </li>
                    <li>
                        <a href="logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
    <!-- /TOP HEADER -->

    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="homepage" class="logo">
                            <img src="templates/img/logo.png" alt="Logo" title="Home Page">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form action="search" method="GET">
                            <select name="type" class="input-select">
                                <option value="all">All Categories</option>
                                <option value="lt">Laptops</option>
                                <option value="sp">Smartphones</option>
                                <option value="tb">Tablets</option>
                                <option value="as">Accessories</option>
                            </select>
                            <input name="info" class="input" placeholder="Search here">
                            <button type="submit" class="search-btn"><i class="fas fa-search"></i>  Search</button>
                        </form>
                    </div>
                </div>
                <!-- /SEARCH BAR -->

                <!-- ACCOUNT -->
                <div class="col-md-3 clearfix">
                    <div class="header-ctn">
                        <!-- Wishlist -->
                        <div>
                            <a href="wishlist">
                                <i class="fas fa-heart"></i>
                                <span>Your Wishlist</span>
                                <c:if test="${numberOfWishList>0}">
                                    <div class="qty">${numberOfWishList}</div>
                                </c:if>
                            </a>
                        </div>
                        <!-- /Wishlist -->

                        <!-- Cart -->
                        <div class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                <i class="fas fa-shopping-cart"></i>
                                <span>Your Cart</span>
                                <div class="qty">3</div>
                            </a>
                            <div class="cart-dropdown">
                                <div class="cart-list">
                                    <c:forEach var="product" items="">
                                        <div class="product-widget">
                                            <div class="product-img">
                                                <img src="templates/img/product01.png" alt="">
                                            </div>
                                            <div class="product-body">
                                                <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                                <h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
                                            </div>
                                            <button class="delete"><i class="fa fa-close"></i></button>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="cart-summary">
                                    <small>3 Item(s) selected</small>
                                    <h5>SUBTOTAL: $2940.00</h5>
                                </div>
                                <div class="cart-btns">
                                    <a href="#"><i class="fas fa-shopping-cart"></i>  View Cart</a>
                                    <a href="checkout.jsp">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- /Cart -->

                        <!-- Menu Toogle -->
                        <div class="menu-toggle">
                            <a href="#">
                                <i class="fa fa-bars"></i>
                                <span>Menu</span>
                            </a>
                        </div>
                        <!-- /Menu Toogle -->
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->
