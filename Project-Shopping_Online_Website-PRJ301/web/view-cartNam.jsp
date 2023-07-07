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
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
        // Add Quantity Button Click Handler
        $(document).on('click', '.quantity-button', function () {
            var input = $(this).siblings('.quantity-input');
            var value = parseInt(input.val());

            if ($(this).text() === '-') {
                if (value > 1) {
                    input.val(value - 1);
                }
            } else {
                input.val(value + 1);
            }
        });
    </script>

   <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        .container {
            max-width: 1200px;
            margin: 0px auto;
        }

        .cart-title {
            font-size: 40px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .product-card {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            padding: 15px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .product-card {
            width: auto;
            height: auto;
            margin-right: 0px;
            object-fit: contain;
        }
        
        .product-image img {
            width: 150px;
            height: 150px;
        }

        .product-card .product-info {
            flex-grow: 0.6;
        }

        .product-card .product-info .product-name {
            font-weight: bold;
            margin-bottom: 10px;
             
        }
        
        .product-name {
            font-size: 25px;
        }
        
        
        .product-card .product-info .product-price {
            color: #888;
            margin-bottom: 10px;
            font-size: 20px;
        }
        
        .product-card .add-to-cart {
            text-align: right;
        }
        
        .add-to-cart-button {
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
        
        .add-to-cart-button:hover {
            background-color: #23527c;
        }
        
        .product-quantity {
            display: flex;
            align-items: center;
        }
        
        .quantity-label {
            margin-right: 5px;
            font-weight: bold;
        }
        
        .quantity-input{
            width: 80px;
        }
        
        .quantity-button {
            width: 30px;
            height: 26px;
            border: none;
            background-color: #eee;
            color: #888;
            font-weight: bold;
            cursor: pointer;
        }


        .view-product-button {
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

            .view-product-button:hover {
                background-color: #23527c;
            }
            
            .remove-product-button {
                display: flex;
                align-items: center;
                justify-content: center;
                width: 200px;
                padding: 10px;
                margin-top: 10px;
                background-color: #d9534f;
                color: #fff;
                font-weight: bold;
                text-align: center;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .remove-product-button:hover {
                background-color: #c9302c;
            }
        

        .checkout-button {
            margin-top: 10px;
            padding: 15px 30px;
            background-color: #337ab7;
            margin-bottom: 20px;
            color: #fff;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            float: right;
        }

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
       <div class="container">
        <h1 class="cart-title">View Cart</h1>
        <div class="product-card">
            <div class="product-image">
                <img src="https://onewaymobile.vn/images/products/2021/05/30/original/ipad-pro-m1-11-_1622345251-copy-copy-copy.png" alt="Ipad Pro 2021">
            </div>
            <div class="product-info">
                <div class="product-name">Ipad Pro 2021</div>
                <div class="product-price">$1500</div>
            </div>
             <div class="add-to-cart">
                <div class="product-quantity">
                    <div class="quantity-label">Quantity:</div>
                    <button class="quantity-button">-</button>
                    <input type="text" class="quantity-input" value="1" readonly>
                    <button class="quantity-button">+</button>
            </div>
            </div>
            <div class="action-buttons">
                <button class="view-product-button">View Product</button>
                <button class="remove-product-button">Remove Product</button>
            </div>
        </div> 
        
         <div class="product-card">
            <div class="product-image">
                <img src="https://help.apple.com/assets/6305096F029A2032C16D3326/63050972029A2032C16D332F/vi_VN/b9f519195f84950573eea5088a49b964.png" alt="Airpod Max">
            </div>
            <div class="product-info">
                <div class="product-name">Airpod Max</div>
                <div class="product-price">$800</div>
            </div>
             <div class="add-to-cart">
                <div class="product-quantity">
                    <div class="quantity-label">Quantity:</div>
                    <button class="quantity-button">-</button>
                    <input type="text" class="quantity-input" value="1" readonly>
                    <button class="quantity-button">+</button>
            </div>
            </div>
            <div class="action-buttons">
                <button class="view-product-button">View Product</button>
                <button class="remove-product-button">Remove Product</button>
            </div>
        </div>
        <button class="checkout-button">Proceed to Checkout</button>
        
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

</html>

