<%-- Created on : Jul 4, 2023, 11:23:29 AM by DuyDuc94--%>

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
        <title>Order</title>
        <style>
                .order-view-form table{
                    max-width: 1000px;
                    margin: 0 auto;
                    margin-top: 10px;
                    margin-bottom: 50px;
                    background-color: #fff;
                    padding: 30px;
                    width: 500px;
                    height: 50px;
                }
                div.vertical-line{
                    width: 0px; /* Use only border style */
                    height: 100%;
                    float: left; 
                    border: 1px inset; /* This is default border style for <hr> tag */
                }
              
                .order-view-form tr{
                    text-align: left;
                 }
                .order-view-form button{
                width: 25%;
                padding: 10px;
                background-color: #337ab7;
                border: 0;
                color: #fff;
                font-weight: bold;
                cursor: pointer;
                }  
             
                .order-view-form .button{
                  display: flex;
                  flex-direction: row-reverse;
                }
                .order-view-form .check-address{
                  display: flex;
                  margin-left: 10px;
                  align-items: center;
                }
              
                .order-view-form .edit{
                    color: black;
                    margin-bottom: 20px;
                    font-size: 18px;
                    font-weight: bold;
                }
                
                .order-view-form td{
                    text-align: left;
                }
                .order{
                    width: 1000px;
                    margin: 0 auto;
                    margin-top: 10px;
                    margin-bottom: 0;
                    background-color: #fff;
                    display: flex;
                    align-items: center;
                }
                .order input{
                    margin: 0;
                }
                .order-detail{
                    width: 1000px;
                    margin: 20px;
                    margin-top: 10px;
                    margin-bottom: 20px;
                    background-color: #fff;
                    border-radius: 5px;
                    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
                    align-items: center;
                }
                .container{
                    margin-bottom: 50px
                }
                .order-view-form .product-name{
                    width: 200px;
                }
/*                .order-view-form .view-order-detail{
                    text-decoration: underline;
                    margin-top:  50px;
                    margin-bottom: 20px;
                }*/
                .order-view-form .order-table{
                    margin-bottom: 20px;
                }
                table, th, td{
                    border-top:1px solid #ccc;
                    border-bottom:1px solid #ccc;
                }
                table{
                    border-collapse:collapse;
                }
                th, td{
                    text-align:left;
                    padding:10px;
                }
                .total{
                    font-weight: bold;
                }
                .half-order1{
                    display: flex;
                }
                .hafl-order2 div{
                    width: 310px;
                    margin-top: 5px; 
                }
        </style>
        
    </head>
    <body>
        <%@include file="templates/header.jsp" %>
        <%@include file="templates/navigation.jsp" %>

        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb-tree">
                            <li><a href="homepage.jsp">Home</a></li>
                            <li><a href="account.jsp">Account</a></li>
                            <li class="active">My Order</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- SECTION -->
        <div class="section">
            <div class="container">
                <div class="row" >
                     <!-- Options -->
                    <div class="update-option-container col-md-3">
                        <form ><h3 style="font-size: 18px; margin-bottom: 30px">UPDATE OPTIONS</h3></form>
                        <div class="input-checkbox">
                            
                            <div class="option">
                            <a href="view-account.jsp">
                                + ACCOUNT INFORMATION
                            </a>
                            </div>
                            <br>
                            <div class="option">
                            <a href="view-addressKhai.jsp">
                                +  ADDRESS
                            </a>  
                            </div>
                            <br>
                            <div class="option">
                            <a href="change-password.jsp">
                                + CHANGE PASSWORD
                            </a>
                            </div>
                            <br>
                            <div class="option">
                                <a href="view-orderKhai.jsp">
                                    + MY ORDER
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="vertical-line" style="height:10cm;"></div>
                    
                    <div class="order-view-form col-md-8">
                        <div class="address-view-title">
                            <h3>MY ORDER</h3>
                        </div>
                        <form action="action">
                            <div class="order-info-tbn">
                                <div class="order">
                                    <div class="order-detail">
                                        <div class="col-md-8 half-order1">
                                        <div class="product-in-order ">
                                                <table class="order-table">
                                                    <tbody>
                                                    <th>ORDER ID:109201</th>
                                                        <tr>
                                                            <td class="product-name">Macbook M2</td>
                                                            <td>x2</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="product-name">Macbook M2</td>
                                                            <td>x2</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="product-name">Macbook M2</td>
                                                            <td>x2</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="product-name">Macbook M2</td>
                                                            <td>x2</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="total">TOTAL:</td>
                                                            <td class="total">50.000.000 VND</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="col-md-4 hafl-order2">
                                                <div>
                                                    + Status: Delivery
                                                </div>
                                                <div >
                                                    + Ordered on: 11-11-2021
                                                </div>
                                                <div>
                                                    + To Address: Khoai Chau, Hung Yen 
                                                </div>
                                                <div>
                                                    + Shipping method: Nhanh vcl 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cancel">
                                         <i class="far fa-window-close"></i>
                                    </div>
                                </div>
                                
                                <div class="order">
                                    <div class="order-detail">
                                        <div class="col-md-8 half-order1">
                                        <div class="product-in-order ">
                                                <table class="order-table">
                                                    <tbody>
                                                    <th>ORDER ID:109201</th>
                                                        <tr>
                                                            <td class="product-name">Macbook M2</td>
                                                            <td>x2</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="product-name">Macbook M2</td>
                                                            <td>x2</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="product-name">Macbook M2</td>
                                                            <td>x2</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="product-name">Macbook M2</td>
                                                            <td>x2</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="total">TOTAL:</td>
                                                            <td class="total">50.000.000 VND</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="col-md-4 hafl-order2">
                                                <div>
                                                    + Status: Delivery
                                                </div>
                                                <div >
                                                    + Ordered on: 11-11-2021
                                                </div>
                                                <div>
                                                    + To Address: Khoai Chau, Hung Yen 
                                                </div>
                                                <div>
                                                    + Shipping method: Nhanh vcl 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cancel">
                                         <i class="far fa-window-close"></i>
                                    </div>
                                </div>
                                
                                </div>
                            </div>
                        </form>
                    </div>
                   
                    </div>
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