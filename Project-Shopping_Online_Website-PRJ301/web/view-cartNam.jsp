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
    // Get all quantity buttons and inputs
    var quantityButtons = document.querySelectorAll(".quantity-button");
    var quantityInputs = document.querySelectorAll(".quantity-input");

    // Add event listeners to each quantity button
    quantityButtons.forEach(function(button, index) {
        button.addEventListener("click", function() {
            var input = quantityInputs[index];
            var currentValue = parseInt(input.value);

            if (button.classList.contains("increase-quantity-button")) {
                // Increase the quantity and update the price
                input.value = currentValue + 1;
                updatePrice(index, currentValue + 1);
            } else if (button.classList.contains("decrease-quantity-button")) {
                // Decrease the quantity and update the price
                if (currentValue > 1) {
                    input.value = currentValue - 1;
                    updatePrice(index, currentValue - 1);
                }
            }
        });
    });

    // Function to update the price based on the quantity
    function updatePrice(index, quantity) {
        var productPrices = document.querySelectorAll(".product-price");
        var productPrice = productPrices[index];
        var price = parseFloat(productPrice.textContent.replace("$", ""));
        var totalPrice = price * quantity;

        productPrice.textContent = "$" + totalPrice.toFixed(2);
    }
</script>
<script>
    var productColorElements = document.querySelectorAll(".product-color select");

    productColorElements.forEach(function(selectElement) {
        selectElement.addEventListener("change", function() {
            var productCard = selectElement.closest(".product-card");
            var productImage = productCard.querySelector(".product-image img");
            var selectedColor = selectElement.value;

            // Update the image source based on the selected color
            var imageUrl = productImage.getAttribute("src");
            var updatedImageUrl = imageUrl.replace("original", selectedColor);
            productImage.setAttribute("src", updatedImageUrl);
        });
    });
</script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-rWJZu7k2ovC5w+7OXPY6ZEXiJa4NjOxXZc2+j6BSreWpHJ0GjHPwt13/9wy3+J31W01sJv2RBwWbUvZI4YguZw==" crossorigin="anonymous" />
    
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

        .product-card {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .product-card  .quantity-button {
            width: 27px;
            height: 27px;
            background-color: #eee;
            border: none;
            border-radius: 10%;
            font-weight: bold;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .product-card  .quantity-button:hover {
            background-color: #ddd;
        }

        .product-card  .quantity-input {
            width: 50px;
            text-align: center;
        }
        
       .quantity-button {
            width: 26px;
            height: 62px;
            background-color: #eee;
            border: none;
            border-radius: 50%;
            font-weight: bold;
            font-size: 20px;
            cursor: pointer;
            transition: background-color 0.3s;

          }

          .quantity-button:hover {
            background-color: #ddd;
          }

          .quantity-input {
            width: 50px;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 5px;
          }
        
        
        .product-color {
            margin-bottom: 10px;
        }

        .product-color label {
            font-weight: bold;
            margin-right: 5px;
        }

        .product-color select {
            padding: 5px;
            border-radius: 3px;
            border: 1px solid #ccc;
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
        <h1 class="cart-title">Your Cart</h1>
        <div class="product-card">
    <div class="product-image">
        <img src="https://onewaymobile.vn/images/products/2021/05/30/original/ipad-pro-m1-11-_1622345251-copy-copy-copy.png" alt="Ipad Pro 2021">
    </div>
    <div class="product-info">
        <div class="product-name">Ipad Pro 2021</div>
        <div class="product-price">$1500</div>
        <div class="product-color">
            <label for="product-color">Color:</label>
            <select id="product-color">
                <option value="silver">Black</option>
                <option value="grey">Grey</option>
                <option value="white">White</option>
            </select>
        </div>
        <div class="product-quantity">
            <button class="quantity-button decrease-quantity-button"><i class="fas fa-minus"></i></button>
            <input class="quantity-input" type="number" value="1" min="1">
            <button class="quantity-button increase-quantity-button"><i class="fas fa-plus"></i></button>
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
        <div class="product-color">
            <label for="product-color">Color:</label>
            <select id="product-color">
                <option value="black">Black</option>
                <option value="grey">Grey</option>
            </select>
        </div>
        <div class="product-quantity">
            <button class="quantity-button decrease-quantity-button"><i class="fas fa-minus"></i></button>
            <input class="quantity-input" type="number" value="1" min="1">
            <button class="quantity-button increase-quantity-button"><i class="fas fa-plus"></i></button>
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
