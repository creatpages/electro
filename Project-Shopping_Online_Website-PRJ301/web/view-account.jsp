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
        <title>Account</title>
        <style>
            .Account-info-container table{
                max-width: 1000px;
                margin: 0 auto;
                margin-top: 10px;
                margin-bottom: 50px;
                background-color: #fff;
                padding: 30px;
                border-radius: 5px;
                box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
                width: 800px;
                height: 200px;
            }
            .Account-info-container .field{
                max-width: 100%;
                font-weight: 700;
            }
            .Account-info-container tr{
                text-align: center;
                margin-top: 20px;
            }
            .Account-info-container .option{
                margin-top: 20px;
            }
            div.vertical-line{
                width: 0px; /* Use only border style */
                height: 100%;
                float: left; 
                border: 1px inset; /* This is default border style for <hr> tag */
              }
           
              
            .Account-info-container button{
                        width: 25%;
                        padding: 10px;
                        background-color: #337ab7;
                        border: 0;
                        color: #fff;
                        font-weight: bold;
                        cursor: pointer;
                }
             
            .Account-info-container .button{
                  display: flex;
                  flex-direction: row-reverse;
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
                    
                    <!-- Options -->
                    <div class="update-option-container col-md-3">
                        <form ><h3 style="font-size: 18px; margin-bottom: 30px">UPDATE OPTIONS</h3></form>
                        <div class="input-checkbox">
                            <br>
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
                    
                    <!-- Account info- -->
                    <div class="Account-info-container col-md-8">
                        <div>
                            <h3>ACOUNT INFORMATION</h3>
                        </div>
                               
                        <form action="action">
                            <div class="account-info-tbn">
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td class="field">Username</td>
                                                <td>:</td>
                                                <td class="info">Khaihy</td>
                                            </tr>
                                            <tr>
                                                <td class="field">Name</td>
                                                <td>:</td>
                                                <td class="info">khai</td>
                                            </tr>
                                            <tr>
                                                <td class="field">ID</td>
                                                <td>:</td>
                                                <td class="info">19284</td>
                                            </tr>
                                            <tr>
                                                <td class="field">Email</td>
                                                <td>:</td>
                                                <td class="info">khai@gmail.com</td>
                                            </tr>
                                            <tr>
                                                <td class="field">Phone</td>
                                                <td>:</td>
                                                <td class="info">Diving, Reading Book</td>
                                            </tr>
                                            <tr>
                                                <td class="field">Status</td>
                                                <td>:</td>
                                                <td class="info">Web Developer</td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
                                <div class="button">
                                    <button class="update-contact-button" type="submit">
                                        <a href="update-accountKhai.jsp" style="font-weight: bold; color:#fff ">UPDATE</a>
                                    </button>
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