<%-- Created on : Jul 2, 2023, 10:28:28 AM by DuyDuc94--%>

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
        <!-- HEADER -->
        <%@include file="templates/header.jsp" %>
        <!-- /HEADER -->

        <!-- NAVIGATION -->
        <%@include file="templates/navigation.jsp" %>
        <!-- /NAVIGATION -->

        <%
            ProductDAO proDAO = new ProductDAO();
            List<Product> listLaptops = proDAO.getTopSellProducts("Laptop");
            List<Product> listSmartphones = proDAO.getTopSellProducts("Smartphone");
            List<Product> listTablets = proDAO.getTopSellProducts("Tablet");
            List<Product> listAccessories = proDAO.getTopSellProducts("Accessory");
        %>

        <c:set var="listLaptops" value="<%=listLaptops%>" />
        <c:set var="listSmartphones" value="<%=listSmartphones%>" />
        <c:set var="listTablets" value="<%=listTablets%>" />
        <c:set var="listAccessories" value="<%=listAccessories%>" />

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
                                <a href="#" class="cta-btn">Shop now <i class="fas fa-arrow-circle-right"></i></a>
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
                                <a href="#" class="cta-btn">Shop now <i class="fas fa-arrow-circle-right"></i></a>
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
                                <a href="#" class="cta-btn">Shop now <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- /banner3 -->
                </div>
            </div>
        </div>
        <!-- /COLLECTION -->

        <!-- SECTION TOP SELLING (>10sold) -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <!-- /title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h3 class="title">Top Selling</h3>
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
                    <!-- /title -->

                    <!-- Products tab & slick -->
                    <div class="col-md-12">
                        <div class="row">
                            <div class="products-tabs">
                                <!-- Laptop Tab -->
                                <div id="LaptopTab" class="tab-pane active">
                                    <div class="products-slick" data-nav="#slick-nav-1">
                                        <c:forEach var="product" items="${listLaptops}">
                                            <%@include file="templates/product-tab.jsp" %>
                                        </c:forEach>
                                    </div>
                                    <div id="slick-nav-1" class="products-slick-nav"></div>
                                </div>
                                <!-- /Laptop Tab -->
                                <!-- Smartphone Tab -->
                                <div id="SmartphoneTab" class="tab-pane">
                                    <div class="products-slick" data-nav="#slick-nav-2">
                                        <c:forEach var="product" items="${listSmartphones}">
                                            <%@include file="templates/product-tab.jsp" %>
                                        </c:forEach>
                                    </div>
                                    <div id="slick-nav-2" class="products-slick-nav"></div>
                                </div>
                                <!-- /Smartphone Tab -->
                                <!-- Tablet Tab -->
                                <div id="TabletTab" class="tab-pane">
                                    <div class="products-slick" data-nav="#slick-nav-3">
                                        <c:forEach var="product" items="${listTablets}">
                                            <%@include file="templates/product-tab.jsp" %>
                                        </c:forEach>
                                    </div>
                                    <div id="slick-nav-3" class="products-slick-nav"></div>
                                </div>
                                <!-- /Tablet Tab -->
                                <!-- Accessory Tab -->
                                <div id="AccessoryTab" class="tab-pane">
                                    <div class="products-slick" data-nav="#slick-nav-4">
                                        <c:forEach var="product" items="${listAccessories}">
                                            <%@include file="templates/product-tab.jsp" %>
                                        </c:forEach>
                                    </div>
                                    <div id="slick-nav-4" class="products-slick-nav"></div>
                                </div>
                                <!-- /Accessory Tab -->
                            </div>
                        </div>
                    </div>
                    <!-- Products tab & slick -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION TOP SELLING -->

        <!-- HOT DEAL SECTION -->
        <div id="hot-deal" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="hot-deal">
                            <h2 class="text-uppercase">PRJ WEBSITE PROJECT</h2>
                            <p>Grand Opening</p>
                            <p>At FPT University</p>
                            <p>On 20/7</p>
                            <p>Welcome</p>
                            <a class="primary-btn cta-btn" href="#">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /HOT DEAL SECTION -->

        <!-- SECTION TOP-SELLING-COLUMN-->
        <div class="section">
            <div class="container">
                <div class="row">
                    <!-- TOP LAPTOP SELLING COLUMN -->
                    <div class="col-md-4 col-xs-6">
                        <!--Title-->
                        <div class="section-title">
                            <h4 class="title">Top Laptop Selling</h4>
                            <div class="section-nav">
                                <div id="slick-nav-5" class="products-slick-nav"></div>
                            </div>
                        </div>
                        <!--Title-->
                        <!--Content-->
                        <div class="products-widget-slick" data-nav="#slick-nav-5">
                            <c:if test="${listLaptops != null}">
                                <div>
                                    <c:forEach items="${listLaptops}" var="product" varStatus="status" begin="0" end="2">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                                <div>
                                    <c:forEach items="${listLaptops}" var="product" varStatus="status" begin="3" end="5">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </div>
                        <!--Content-->
                    </div>
                    <!-- /TOP LAPTOP SELLING COLUMN -->
                    <!--TOP SMARTPHONE SELLING COLUMN-->
                    <div class="col-md-4 col-xs-6">
                        <div class="section-title">
                            <h4 class="title">Top Smartphone selling</h4>
                            <div class="section-nav">
                                <div id="slick-nav-6" class="products-slick-nav"></div>
                            </div>
                        </div>

                        <div class="products-widget-slick" data-nav="#slick-nav-6">
                            <c:if test="${listSmartphones != null}">
                                <div>
                                    <c:forEach items="${listSmartphones}" var="product" varStatus="status" begin="0" end="2">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                                <div>
                                    <c:forEach items="${listSmartphones}" var="product" varStatus="status" begin="3" end="5">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </div>
                    </div>
                    <!--TOP SMARTPHONE SELLING COLUMN-->
                    <div class="clearfix visible-sm visible-xs"></div>

                    <!--TOP TABLET SELLING COLUMN-->
                    <div class="col-md-4 col-xs-6">
                        <div class="section-title">
                            <h4 class="title">Top Tablet selling</h4>
                            <div class="section-nav">
                                <div id="slick-nav-7" class="products-slick-nav"></div>
                            </div>
                        </div>

                        <div class="products-widget-slick" data-nav="#slick-nav-7">
                            <c:if test="${listTablets != null}">
                                <div>
                                    <c:forEach items="${listTablets}" var="product" varStatus="status" begin="0" end="2">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                                <div>
                                    <c:forEach items="${listTablets}" var="product" varStatus="status" begin="3" end="5">
                                        <%@include file="templates/product-widget.jsp" %>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </div>
                    </div>
                    <!--TOP TABLET SELLING COLUMN-->
                </div>
            </div>
        </div>
        <!-- /SECTION TOP-SELLING-COLUMN -->

        <!-- NEWSLETTER -->
        <div id="newsletter" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
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
                                    <a href="https://www.facebook.com/ducduylh"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="https://github.com/DuyDuc94" title="DucDuyLH"><i class="fa fa-github"></i></a>
                                </li>
                                <li>
                                    <a href="mailto:duyduc.luonghuu@gmail.com"><i class="fa fa-envelope"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /NEWSLETTER -->        

        <!-- FOOTER -->
        <%@include file="templates/footer.jsp" %>
        <!-- /FOOTER -->

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
