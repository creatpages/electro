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
            th{
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            td{
                font-size: 18px;
                color: black; 
                height: 50px; 
                width: 200px
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
                    <div class="update-info">
                        <div class="update-titles">
                            <p style="color: #15161D; text-align: left; font-weight: 700; font-family: inherit; font-size: 24px">
                                UPDATE INFOMATION
                            </p>
                        </div>
                        <div class="update-table">
                            <table>
                                <tbody>
                                    <tr>
                                        <td>Name</td>
                                        <td>:</td>
                                        <td><input type="text" name="name" placeholder="Your name"></td>
                                    </tr>
                                    <tr>
                                        <td>ID</td>
                                        <td>:</td>
                                        <td><input type="number" name="ID" placeholder="ID"></td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td>:</td>
                                        <td><input type="text" name="address" placeholder="Your address"></td>
                                    </tr>
                                    <tr>
                                        <td>Phone number</td>
                                        <td>:</td>
                                        <td><input type="text" name="phonenumber" placeholder="Your phonenumber"></td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td>:</td>
                                        <td><input type="text" name="email" placeholder="Your email"></td>
                                    </tr>
                                    <tr>
                                        <td>Status</td>
                                        <td>:</td>
                                        <td><input type="text" name="status" placeholder="Status"><td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="accept-button" >                       
                            <button type="button" class="accept" style="background: #2B2D42; height: 30px; width: 90px; margin-left: 410px;" name="acceptPass">
                                <p style="color: #ddd; text-align: center">Update</p>
                            </button>
                            <button type="button" class="accept" style="background: #2B2D42; height: 30px; width: 90px; margin-left: 20px;" name="cancelPass">
                                <p style="color: #ddd; text-align: center">Cancel</p>
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