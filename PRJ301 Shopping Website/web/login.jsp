<%-- Created on : Jul 2, 2023, 2:25:06 PM by DuyDuc94--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import = "java.util.*" %>
<%@page import = "model.*" %>
<%@page import = "dal.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                background-color: #f5f5f5;
            }

            .login-container {
                max-width: 400px;
                margin:  auto;
                margin-top: 10px;
                margin-bottom: 50px;
                background-color: #fff;
                padding: 30px;
                border-radius: 5px;
                box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
            }

            .login-container .form-group {
                margin-bottom: 20px;
            }

            .login-container label {
                font-weight: bold;
            }

            .login-container input[type="text"],
            .login-container input[type="password"] {
                width: 100%;
                padding: 10px;
                border-radius: 3px;
                border: 1px solid #ccc;
            }

            .login-container button[type="submit"] {
                width: 100%;
                padding: 10px;
                background-color: #337ab7;
                border: 0;
                color: #fff;
                font-weight: bold;
                cursor: pointer;
            }

            .login-container .social-login {
                margin-top: 20px;
                text-align: center;
            }

            .login-container .social-login .btn {
                display: inline-block;
                margin-right: 10px;
            }

            .login-container .social-login .btn img {
                width: 30px;
                height: 30px;
            }

            .login-container .forgot-password {
                text-align: center;
                margin-top: 20px;
            }

            .login-container .forgot-password a {
                color: #337ab7;
                position: relative;
                text-decoration: none;
                font-weight: bold;
            }

            .login-container .forgot-password a:before {
                content: "";
                position: absolute;
                left: 0;
                bottom: -2px;
                width: 100%;
                border-bottom: 1px dotted rgba(0, 0, 0, 0.2);
                transform: scaleX(0.7);
            }

            .login-container .register-link {
                text-align: center;
                margin-top: 20px;
            }

            .login-container .register-link a {
                color: #337ab7;
                text-decoration: none;
                font-weight: bold;
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
        <title>Login</title>
    </head>
    <body>
        <%@include file="templates/header.jsp" %>
        <%@include file="templates/navigation.jsp" %>

        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!--<h3 class="breadcrumb-header">Login</h3>-->
                        <ul class="breadcrumb-tree">
                            <li><a href="homepage.jsp">Home</a></li>
                            <li class="active">Login</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- SECTION -->
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-container">
                        <h2 class="text-center">Login</h2>
                        <form action="login" method="post">
                            <div class="form-group">
                                <label for="username">Username:</label>
                                <input type="text" class="form-control" id="username" name="username" placeholder="Enter username">
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
                            </div>
                            <p class="text-center">${requestScope['message']}</p>
                            <button type="submit" class="btn btn-primary">Login</button>
                            <div class="social-login">
                                <button class="btn btn-default"><img src="https://fftweb.b-cdn.net/sites/default/files/styles/1of1_square_sm/public/field_card_image/google-logo.jpg?h=cd2a7045&itok=sW3rEgzb" alt="Gmail"></button>
                                <button class="btn btn-default"><img src="https://th.bing.com/th/id/R.4073836f2fdb4bcd7ec76a1ff2f08886?rik=nSKRykqkPd%2bZ7g&pid=ImgRaw&r=0" alt="Facebook"></button>
                            </div>
                            <div class="forgot-password">
                                <a href="forgot-password.jsp">Forgot Password?</a>
                            </div>
                        </form>
                        <div class="register-link">
                            <p>Don't have an account? <a href="register.jsp">Register</a></p>
                        </div>
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
