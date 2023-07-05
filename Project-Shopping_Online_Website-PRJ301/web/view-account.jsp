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
        <title>Wishlist</title>
        <style>

            th, td{
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #ddd;
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
                        <!--<h3 class="breadcrumb-header">Wishlist</h3>-->
                        <ul class="breadcrumb-tree">
                            <li><a href="homepage.jsp">Home</a></li>
                            <li class="active">Account</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- SECTION -->
        <div class="section">
            <div class="container">

                <div class="row">
                    
                    <!-- Account- -->
                    <div class="user-account main-nav">
                <h3>ACCOUNT INFORMATION</h3>
                    <div class="account-info">
                        <!-- username - password -->
                        <div class="update-button">
                            <button type="button" class="accept" style="background: #2B2D42; height: 30px; width: 40px; margin-left: 470px" name="update">
                                <i class="fa fa-pen fa-xs edit" style="color: #ddd"></i>
                             </button>
                        </div>
                       
                        <div class="username-pass">
                            
                            <table style="border-collapse: collapse; width: 100%">
                                <div class="user">
                                    <td><h4>Username: </h4></td>
                                    <td style="font-weight: bold">khai day</td>
                                </div>
                                <div class="password">
                                    <td><h4>Password:</h4> </td>
                                    <td style="font-weight: bold">**********</td>
                                </div>
                            </table>
                        </div>
                        <!-- info -->
                        <div class="info">
                            <table class="profile"  style="border-collapse: collapse; width: 100%">
                                
                                <tbody>
                                    <tr>
                                        <td>Name</td>
                                        <td>:</td>
                                        <td>Phan Van Khai</td>
                                    </tr>
                                    <tr>
                                        <td>ID</td>
                                        <td>:</td>
                                        <td>242422</td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td>:</td>
                                        <td>Dubai</td>
                                    </tr>
                                    <tr>
                                        <td>Phone number</td>
                                        <td>:</td>
                                        <td>03483985394</td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td>:</td>
                                        <td>phankhai@gmail.com</td>
                                    </tr>
                                    <tr>
                                        <td>Status</td>
                                        <td>:</td>
                                        <td>Active<td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        
                    </div>
                <div class="change-pass" >
                    <button type="button" class="accept" style="background: #2B2D42; height: 50px; width: 150px;" name="changePass">
                    <a href="change-password.jsp" ><i style="border: 1px"><p style="font-size: medium; color: #ddd">Change password<p></i></a>
                        </div>
                    </button>
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