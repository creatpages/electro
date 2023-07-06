<%-- Created on : Jul 3, 2023, 4:26:22 PM by DuyDuc94--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import = "java.util.*" %>
<%@page import = "model.*" %>
<%@page import = "dal.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>View Cart</title>
    
     <script>
        
        function increaseQuantity(button) {
            var input = button.parentNode.querySelector('.quantity-input');
            var quantity = parseInt(inputvalue);
            quantity += 1;
            input.value = quantity;

            updatePrice(button, quantity);
        }

        function decreaseQuantity(button) {
            var input = button.parentNode.querySelector('.quantity-input');
            var quantity = parseInt(input.value);
            if (quantity > 1) {
                quantity -= 1;
                input.value = quantity;

                updatePrice(button, quantity);
            }
        }

        function updatePrice(button, quantity) {
            var productInfo = button.parentNode.parentNode.querySelector('.product-info');
            var priceElement = productInfo.querySelector('.product-price');
            var price = parseFloat(priceElement.innerHTML.replace('$', ''));
            var totalPrice = price * quantity;

            var newPriceElement = document.createElement('div');
            newPriceElement.classList.add('product-price');
            newPriceElement.innerHTML = '$' + totalPrice.toFixed(2);

            productInfo.replaceChild(newPriceElement, priceElement);
        }
    </script>
    
     <style>
        
        .product-quantity {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .quantity-button {
            width: 30px;
            height: 30px;
            background-color: #eee;
            border: none;
            border-radius: 50%;
            font-weight: bold;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .quantity-button:hover {
            background-color: #ddd;
        }

        .remove-product-button,
        .view-product-button,
        .checkout-button {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 200px;
            padding: 10px;
            background-color: #337ab7;
            color: #fff;
            font-weight: bold;
            text-align: center;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .remove-product-button:hover,
        .view-product-button:hover,
        .checkout-button:hover {
            background-color: #23527c;
        }
        
    </style>
    
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
        <title>Wishlist</title>
    </head>
    <body>
        <%@include file="templates/header.jsp" %>
        <%@include file="templates/navigation.jsp" %>

        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!--<h3 class="breadcrumb-header">Wishlist</h3>-->
                        <ul class="breadcrumb-tree">
                            <li><a href="homepage.jsp">Home</a></li>
                            <li><a href="cart.jsp">Your Cart</a></li>
                            <li class="active">View Cart</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- SECTION -->
       <div class="section">
        <div class="container">
            <c:if test="${user==null}">
                <!-- Code for user not logged in -->
            </c:if>
            <c:if test="${user!=null}">
                <c:if test="${cart!=null}">
                    <c:forEach var="product" items="${cart}">
                        <div class="row">
                            <div class="product-card">
                                <div class="product-image">
                                    <img src="templates/img/${product.getImage()}" alt="${product.getName()}">
                                </div>
                                <div class="product-info">
                                    <div class="product-name">${product.getName()}</div>
                                    <div class="product-price">$${product.getPrice()}</div>
                                    <div class="product-quantity">
                                        <button class="quantity-button decrease-quantity-button" onclick="decreaseQuantity(this)">-</button>
                                        <input class="quantity-input" type="number" value="1" min="1">
                                        <button class="quantity-button increase-quantity-button" onclick="increaseQuantity(this)">+</button>
                                    </div>
                                </div>
                                <div class="view-to-cart">
                                    <button onclick="window.location.href = 'homepage.jsp'" class="view-product-button">View Product</button>  
                                    <form action="remove-cart" method="post">
                                        <input type="hidden" name="proID" value="${product.getID()}">
                                        <button type="submit" class="remove-product-button">Remove Product</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="row">
                        <div class="col-md-12 text-right">
                            <button onclick="window.location.href = 'checkout.jsp'" class="checkout-button">Proceed to Checkout</button>
                        </div>
                    </div>
                </c:if>
                <c:if test="${cart==null}">
                    <p class="text-center">Your cart is empty</p>
                </c:if>
            </c:if>
        </div>
    </div>
        <!-- /SECTION -->

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
