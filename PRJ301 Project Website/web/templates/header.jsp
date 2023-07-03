<%-- Created on : Jul 2, 2023, 10:29:31 AM  by DuyDuc94--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- HEADER -->
<header>
    <!-- TOP HEADER -->
    <div id="top-header">
        <div class="container">
            <ul class="header-links pull-left">
                <li><a href="#"><i class="fas fa-phone-alt"></i>+84 912 312 312</a></li>
                <li><a href="#"><i class="fas fa-paper-plane"></i></i>duyduc.luonghuu@gmail.com</a></li>
                <li><a href="#"><i class="fas fa-map-marker-alt"></i></i>HaNoi, VietNam</a></li>
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
                <!--Nếu chưa có session đăng nhập-->
                <li><a href="login.jsp"><i class="fas fa-sign-in-alt"></i>Sign in</a></li>
                <li><a href="#"><i class="fas fa-user-plus"></i>Sign up</a></li>
                <!--Nếu đã có session đăng nhập-->
                <li><a href="#"><i class="fas fa-user"></i>My Account</a></li>
                <li><a href="#"><i class="fas fa-sign-out-alt"></i>Sign out</a></li>
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
                        <a href="homepage.jsp" class="logo">
                            <img src="templates/img/logo.png" alt="Logo" title="Home Page">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form action="" method="GET">
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
                            <a href="wishlist.jsp">
                                <i class="fas fa-heart"></i>
                                <span>Your Wishlist</span>
                                <div class="qty">2</div>
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

                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="templates/img/product02.png" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                            <h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
                                        </div>
                                        <button class="delete"><i class="fa fa-close"></i></button>
                                    </div>

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
