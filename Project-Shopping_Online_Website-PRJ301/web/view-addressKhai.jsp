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
        <title>Address</title>
        <style>
                .address-view-form table{
                    max-width: 1000px;
                    margin: 0 auto;
                    margin-top: 10px;
                    margin-bottom: 50px;
                    background-color: #fff;
                    padding: 30px;
                    border-radius: 5px;
                    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
                    width: 800px;
                    height: 50px;
                }
                div.vertical-line{
                    width: 0px; /* Use only border style */
                    height: 100%;
                    float: left; 
                    border: 1px inset; /* This is default border style for <hr> tag */
                }
              
                .address-view-form tr{
                    text-align: left;
                 }
                .address-view-form button{
                width: 25%;
                padding: 10px;
                background-color: #337ab7;
                border: 0;
                color: #fff;
                font-weight: bold;
                cursor: pointer;
                }  
             
                .address-view-form .button{
                  display: flex;
                  flex-direction: row-reverse;
                }
                .address-view-form .check-address{
                  display: flex;
                  margin-left: 10px;
                  align-items: center;
                }
              
                .address-view-form .edit{
                    color: black;
                    margin-bottom: 20px;

                }
                
                .address-view-form td{
                    text-align: left;
                }
                .address{
                    width: 1000px;
                    margin: 0 auto;
                    margin-top: 10px;
                    margin-bottom: 0;
                    background-color: #fff;
                    padding: 30px;
                    display: flex;
                    align-items: center;
                }
                .address input{
                    margin: 0;
                }
                .address-detail{
                    width: 1000px;
                    margin: 20px;
                    margin-top: 10px;
                    margin-bottom: 20px;
                    background-color: #fff;
                    padding: 30px;
                    border-radius: 5px;
                    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
                    align-items: center;
                }
                .container{
                    margin-bottom: 50px
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
                            <li class="active">View address</li>
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
                        </div>
                    </div>
                    <div class="vertical-line" style="height:10cm;"></div>
                    
                    <div class="address-view-form col-md-8">
                        <div class="address-view-title">
                            <h3>MY ADDRESS</h3>
                        </div>
                        <form action="action">
                            <div class="address-info-tbn">
                                <div class="address">
                                    <div class="check-address">
                                        <input type="radio" name="select-address">
                                    </div>
                                    <div class="address-detail">
                                        xa Dan Tien , Huyen Khoai Chau, tinh Hung Yen
                                    </div>
                                    <div class="update-pen">
                                         <i class="fa fa-pen fa-xs edit"></i>
                                    </div>
                                </div>
                                <div class="address">
                                    <div class="check-address">
                                        <input type="radio" name="select-address">
                                    </div>
                                    <div class="address-detail">
                                        xa Dan Tien , Huyen Khoai Chau, tinh Hung Yenaslkdjaskldjasdkajsldsdkfskdjfskdfksdfjsldfjdskfjsdlkfjsdlfksdjfklsdddddddddddddd
                                    </div>
                                    <div class="update-pen">
                                         <i class="fa fa-pen fa-xs edit"></i>
                                    </div>
                                </div>
                                <div class="button">
                                    <button class="add-address-button" type="submit">
                                        <a href="add-addressKhai.jsp" style="color: #fff; font-weight: bold">ADD ADDRESS</a>
                                    </button>
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