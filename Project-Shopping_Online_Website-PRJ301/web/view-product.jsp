<%-- 
    Document   : view-product
    Created on : Jul 6, 2023, 3:48:56 PM
    Author     : duy20
--%>

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

        <c:set var="mainProduct" value="${requestScope['mainProduct']}"/>
        <c:set var="listProductDetail" value="${requestScope['listProductDetail']}"/>
        <c:set var="listRelatedProduct" value="${requestScope['listRelatedProduct']}"/>

        <c:set var="proDetail" value="${requestScope['proDetail']}"/>
        <c:set var="quantityUserChoose" value="${requestScope['quantityUserChoose']}"/>

        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb-tree">
                            <h3 class="breadcrumb-header">Store</h3>
                            <li class="active"><a href="homepage">Home</a></li>
                            <li><a href="search?category=All">All Categories</a></li>
                            <li><a href="search?category=${mainProduct.getCategoryName()}">${mainProduct.getCategoryName()}</a></li>
                            <li><a href="search?category=${mainProduct.getCategoryName()}&brand=${mainProduct.getBrandName()}">${mainProduct.getBrandName()}</a></li>
                            <li>${mainProduct.getName()}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- VIEW PRODUCT -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <!-- Product main img -->
                    <div class="col-md-5 col-md-push-2">
                        <div id="product-main-img">
                            <div class="product-preview">
                                <img src="templates/img${mainProduct.getImage()}" alt="${mainProduct.getName()}">
                            </div>
                            <c:forEach var="productImage1" items="${listProductDetail}">
                                <div class="product-preview">
                                    <img src="templates/img${productImage1.getImage()}" alt="${mainProduct.getName()}">
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- /Product main img -->

                    <!-- Product thumb imgs -->
                    <div class="col-md-2  col-md-pull-5">
                        <div id="product-imgs">
                            <div class="product-preview">
                                <img src="templates/img${mainProduct.getImage()}" alt="${mainProduct.getName()}">
                            </div>
                            <c:forEach var="productImage2" items="${listProductDetail}">
                                <div class="product-preview">
                                    <img src="templates/img${productImage2.getImage()}" alt="${mainProduct.getName()}">
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- /Product thumb imgs -->

                    <!-- Product details -->
                    <div class="col-md-5">
                        <div class="product-details">
                            <h2 class="product-name">${mainProduct.getName()}</h2>
                            <div>
                                <h3 id="price" class="product-price">$${proDetail!=null?proDetail.getPrice():mainProduct.getPrice()}</h3>
                                <span class="product-available">Remain: ${proDetail!=null?proDetail.getQuantity():mainProduct.getQuantity()}</span>
                            </div>
                            <p>${mainProduct.getDescription()}</p>

                            <div class="product-options">
                                <label>
                                    Color
                                    <form action="#" method="get" id="getColor">
                                        <input type="hidden" name="proID" value="${mainProduct.getID()}">
                                        <select onchange="getColor.submit()" style="text-transform: capitalize" name="color" class="input-select" required>
                                            <c:if test="${proDetail==null}">
                                                <option selected></option>
                                            </c:if>
                                            <c:forEach var="productDetail" items="${listProductDetail}">
                                                <option value="${productDetail.getColor()}" ${proDetail.getColor()==productDetail.getColor()?'selected':''}>${productDetail.getColor()}</option>
                                            </c:forEach>
                                        </select>
                                    </form>
                                </label>
                            </div>
                            <form action="add-to-cart" method="post">
                                <input type="hidden" name="proID" value="${mainProduct.getID()}">
                                <input type="hidden" name="proDetailID" value="${proDetail.getID()}">
                                <input type="hidden" name="color" value="${proDetail.getColor()}">
                                <div class="add-to-cart">
                                    <div class="qty-label">
                                        Qty
                                        <div class="input-number">
                                            <input onchange="changPrice(this.value, ${proDetail.getPrice()})" name="quantity" type="number" value="${quantityUserChoose}" required>
                                            <span class="qty-up">+</span>
                                            <span class="qty-down">-</span>
                                        </div>
                                    </div>
                                    <button type="submit" class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                </div>
                                <p style="color: red">${requestScope['message']}</p>
                            </form>

                            <ul class="product-btns">
                                <li>
                                    <form action="wishlist" id="add-to-wishlist" method="post">
                                        <input type="hidden" name="proID" value="${mainProduct.getID()}">
                                        <a onclick="document.getElementById('add-to-wishlist').submit();"><i class="fa ${mainProduct.isInWishlist(user.getID())?'fa-heart':'fa-heart-o'}"></i> add to wishlist</a>
                                    </form>
                                </li>
                            </ul>

                            <ul class="product-links">
                                <li>Category: <a href="search?category=${mainProduct.getCategoryName()}">${mainProduct.getCategoryName()}</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /Product details -->

                    <!-- Product tab -->
                    <div class="col-md-12">
                        <div id="product-tab">
                            <!-- product tab nav -->
                            <ul class="tab-nav">
                                <li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>
                                <li><a data-toggle="tab" href="#tab2">Details</a></li>
                                <li><a data-toggle="tab" href="#tab3">Reviews (3)</a></li>
                            </ul>
                            <!-- /product tab nav -->

                            <!-- product tab content -->
                            <div class="tab-content">
                                <!-- tab1  -->
                                <div id="tab1" class="tab-pane fade in active">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p>${product.getDescription()}</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- /tab1  -->

                                <!-- tab2  -->
                                <div id="tab2" class="tab-pane fade in">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h1 class="text-center">Underdeveloping</h1>
                                        </div>
                                    </div>
                                </div>
                                <!-- /tab2  -->

                                <!-- tab3  -->
                                <div id="tab3" class="tab-pane fade in">
                                    <div class="row">
                                        <h1 class="text-center">Underdeveloping</h1>
                                    </div>
                                </div>
                                <!-- /tab3  -->
                            </div>
                            <!-- /product tab content  -->
                        </div>
                    </div>
                    <!-- /product tab -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /VIEW PRODUCT -->

        <!-- RELATED PRODUCT -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title text-center">
                            <h3 class="title">Related Products</h3>
                        </div>
                    </div>
                    <c:forEach var="product" items="${listRelatedProduct}">
                        <c:if test="${product.getID()!=mainProduct.getID()}">
                            <div class="col-md-3 col-xs-6">
                                <%@include file="templates/product-tab.jsp" %>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- /RELATED PRODUCT -->

        <!-- FOOTER -->
        <%@include file="templates/footer.jsp" %>
        <!-- /FOOTER -->

        <script>
            function changPrice(quantity, basePrice) {
                if (basePrice === null) {
                    return;
                }
                let newPrice = quantity * basePrice;
                let priceElement = document.getElementById('price');
                if (priceElement) {
                    priceElement.innerHTML = '$' + newPrice.toFixed(2);
                }
            }
        </script>

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