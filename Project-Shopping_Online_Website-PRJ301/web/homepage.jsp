<%-- Created on : Jul 2, 2023, 10:28:28 AM by DuyDuc94 --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import = "java.util.*" %>
<%@page import = "model.*" %>
<%@page import = "dal.*" %>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet"/>
        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="templates/css/bootstrap.min.css" />
        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="templates/css/slick.css" />
        <link type="text/css" rel="stylesheet" href="templates/css/slick-theme.css" />
        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="templates/css/nouislider.min.css" />
        <!-- Font Awesome Kit v5 -->
        <script src="https://kit.fontawesome.com/db3e6c46fb.js" crossorigin="anonymous"></script>
        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="templates/css/style.css" />
        <title>Home Page</title>
    </head>

    <body>
        
        <%@include file="templates/header.jsp" %>
        <%@include file="templates/navigation.jsp" %>

        <%
            //load the list of best-selling products
            ProductDAO proDAO = new ProductDAO();
            List<Product> listBestSellLaptops = proDAO.getBestSellProducts("Laptop");
            List<Product> listBestSellSmartphones = proDAO.getBestSellProducts("Smartphone");
            List<Product> listBestSellTablets = proDAO.getBestSellProducts("Tablet");
            List<Product> listBestSellAccessories = proDAO.getBestSellProducts("Accessory");
        %>

        <c:set var="listBestSellLaptops" value="<%=listBestSellLaptops%>" />
        <c:set var="listBestSellSmartphones" value="<%=listBestSellSmartphones%>" />
        <c:set var="listBestSellTablets" value="<%=listBestSellTablets%>" />
        <c:set var="listBestSellAccessories" value="<%=listBestSellAccessories%>" />

        <!-- COLLECTION -->
        <div class="section">
            <div class="container">
                <div class="row">
                    
                    <!-- banner1 -->
                    <div class="col-md-4 col-xs-6">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="templates/img/laptop-banner.png" alt="Laptops">
                            </div>
                            <div class="shop-body">
                                <h3>Laptop<br>Collection</h3>
                                <a href="search?category=Laptop" class="cta-btn">Shop now <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- /banner1 -->

                    <!-- banner2 -->
                    <div class="col-md-4 col-xs-6">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="templates/img/accessories-banner.png" alt="Accessories">
                            </div>
                            <div class="shop-body">
                                <h3>Accessories<br>Collection</h3>
                                <a href="search?category=Accessory" class="cta-btn">Shop now <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- /banner2 -->

                    <!-- banner3 -->
                    <div class="col-md-4 col-xs-6">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="templates/img/smartphone-banner.png" alt="Smartphones">
                            </div>
                            <div class="shop-body">
                                <h3>Smartphones<br>Collection</h3>
                                <a href="search?category=Smartphone" class="cta-btn">Shop now <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- /banner3 -->
                </div>
            </div>
        </div>
        <!-- /COLLECTION -->

        <!-- TOP SELLING TAB -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <!-- Title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h3 class="title">Top Best Seller</h3>
                            <div class="section-nav">
                                <ul class="section-tab-nav tab-nav">
                                    <li class="active"><a data-toggle="tab" href="#LaptopTab">Laptops</a></li>
                                    <li><a data-toggle="tab" href="#SmartphoneTab">Smartphones</a></li>
                                    <li><a data-toggle="tab" href="#TabletTab">Tablets</a></li>
                                    <li><a data-toggle="tab" href="#AccessoryTab">Accessories</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /Title -->

                    <!-- Products tab & slick -->
                    <div class="col-md-12">
                        <div class="row">
                            <div class="products-tabs">
                                <!-- Laptop Tab -->
                                <div id="LaptopTab" class="tab-pane active">
                                    <div class="products-slick" data-nav="#slick-nav-1">
                                        <c:forEach var="product" items="${listBestSellLaptops}">
                                            <%@include file="templates/product-tab.jsp" %>
                                        </c:forEach>
                                    </div>
                                    <div id="slick-nav-1" class="products-slick-nav"></div>
                                </div>
                                <!-- Smartphone Tab -->
                                <div id="SmartphoneTab" class="tab-pane">
                                    <div class="products-slick" data-nav="#slick-nav-2">
                                        <c:forEach var="product" items="${listBestSellSmartphones}">
                                            <%@include file="templates/product-tab.jsp" %>
                                        </c:forEach>
                                    </div>
                                    <div id="slick-nav-2" class="products-slick-nav"></div>
                                </div>
                                <!-- Tablet Tab -->
                                <div id="TabletTab" class="tab-pane">
                                    <div class="products-slick" data-nav="#slick-nav-3">
                                        <c:forEach var="product" items="${listBestSellTablets}">
                                            <%@include file="templates/product-tab.jsp" %>
                                        </c:forEach>
                                    </div>
                                    <div id="slick-nav-3" class="products-slick-nav"></div>
                                </div>
                                <!-- Accessory Tab -->
                                <div id="AccessoryTab" class="tab-pane">
                                    <div class="products-slick" data-nav="#slick-nav-4">
                                        <c:forEach var="product" items="${listBestSellAccessories}">
                                            <%@include file="templates/product-tab.jsp" %>
                                        </c:forEach>
                                    </div>
                                    <div id="slick-nav-4" class="products-slick-nav"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Products tab & slick -->
                </div>
            </div>
        </div>
        <!-- /TOP SELLING TAB -->

        <!-- HOT DEAL SECTION -->
        <div id="hot-deal" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="hot-deal">
                            <h2 class="text-uppercase">Shopping Online Website</h2>
                            <p>PRJ301 Project</p>
                            <p>In FPT University</p>
                            <p>On 20/7</p>
                            <p>Welcome</p>
                            <a class="primary-btn cta-btn" href="search?category=All">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /HOT DEAL SECTION -->

        <!-- TOP-SELLING-COLUMN-->
        <div class="section">
            <div class="container">
                <div class="row">
                    
                    <!-- Laptop Column -->
                    <div class="col-md-4 col-xs-6">
                        <div class="section-title">
                            <h4 class="title">Top Laptop Best Seller</h4>
                            <div class="section-nav">
                                <div id="slick-nav-5" class="products-slick-nav"></div>
                            </div>
                        </div>
                        <div class="products-widget-slick" data-nav="#slick-nav-5">
                            <c:if test="${listBestSellLaptops.size()>0}">
                                <div>
                                    <c:forEach items="${listBestSellLaptops}" var="product" varStatus="status" begin="0" end="2">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                                <div>
                                    <c:forEach items="${listBestSellLaptops}" var="product" varStatus="status" begin="3" end="5">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </div>
                    </div>
                    
                    <!-- Smartphone Column -->
                    <div class="col-md-4 col-xs-6">
                        <div class="section-title">
                            <h4 class="title">Top Smartphone Best Seller</h4>
                            <div class="section-nav">
                                <div id="slick-nav-6" class="products-slick-nav"></div>
                            </div>
                        </div>
                        <div class="products-widget-slick" data-nav="#slick-nav-6">
                            <c:if test="${listBestSellSmartphones.size()>0}">
                                <div>
                                    <c:forEach items="${listBestSellSmartphones}" var="product" varStatus="status" begin="0" end="2">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                                <div>
                                    <c:forEach items="${listBestSellSmartphones}" var="product" varStatus="status" begin="3" end="5">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </div>
                    </div>
                    
                    <div class="clearfix visible-sm visible-xs"></div>

                    <!-- Tablet Column -->
                    <div class="col-md-4 col-xs-6">
                        <div class="section-title">
                            <h4 class="title">Top Tablet Best Seller</h4>
                            <div class="section-nav">
                                <div id="slick-nav-7" class="products-slick-nav"></div>
                            </div>
                        </div>

                        <div class="products-widget-slick" data-nav="#slick-nav-7">
                            <c:if test="${listBestSellTablets.size()>0}">
                                <div>
                                    <c:forEach items="${listBestSellTablets}" var="product" varStatus="status" begin="0" end="2">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                                <div>
                                    <c:forEach items="${listBestSellTablets}" var="product" varStatus="status" begin="3" end="5">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
         <!-- /TOP-SELLING-COLUMN -->

        <!-- NEWSLETTER -->
        <div id="newsletter" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="newsletter">
                            <p>Sign Up for the <strong>NEWSLETTER</strong> (Under developing)</p>
                            <form>
                                <input class="input" type="email" placeholder="Enter Your Email">
                                <button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
                            </form>
                            <ul class="newsletter-follow">
                                <li>
                                    <a href="https://www.facebook.com/ducduylh" target="_blank">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://github.com/DuyDuc94" target="_blank">
                                        <i class="fa fa-github"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-envelope"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /NEWSLETTER -->        

        <%@include file="templates/footer.jsp" %>

        <!-- jQuery Plugins -->
        <script src="templates/js/jquery.min.js"></script>
        <script src="templates/js/bootstrap.min.js"></script>
        <script src="templates/js/slick.min.js"></script>
        <script src="templates/js/nouislider.min.js"></script>
        <script src="templates/js/jquery.zoom.min.js"></script>
        <script src="templates/js/main.js"></script>
        <!-- /jQuery Plugins -->
    </body>
</html>
