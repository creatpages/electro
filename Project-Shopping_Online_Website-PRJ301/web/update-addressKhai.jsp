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
        <title>Update address</title>
        <style>
            .update-container{
                max-width: 400px;
                margin: 0 auto;
                margin-top: 10px;
                margin-bottom: 50px;
                background-color: #fff;
                padding: 30px;
                border-radius: 5px;
                box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
            }
            .update-container .field{
                margin-bottom: 20px
            }
            
            label {
                display: inline-block;
                max-width: 100%;
                margin-bottom: 5px;
                font-weight: 700;
            }
            
            .update-container input{
                width: 100%;
                padding: 10px;
                border-radius: 3px;
                border: 1px solid #ccc;
            }
            .input-form{
                    display: block;
                    width: 100%;
                    height: 34px;
                    padding: 6px 12px;
                    font-size: 14px;
                    line-height: 1.42857143;
                    color: #555;
                    background-color: #fff;
                    background-image: none;
                    border: 1px solid #ccc;
                    border-radius: 4px;
                    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
                    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
                    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
                    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
                    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
                }
                
                .primary{
                    display: inline-block;
                    padding: 6px 12px;
                    margin-bottom: 0;
                    font-size: 14px;
                    font-weight: 400;
                    line-height: 1.42857143;
                    text-align: center;
                    white-space: nowrap;
                    vertical-align: middle;
                    -ms-touch-action: manipulation;
                    touch-action: manipulation;
                    cursor: pointer;
                    -webkit-user-select: none;
                    -moz-user-select: none;
                    -ms-user-select: none;
                    user-select: none;
                    background-image: none;
                    border: 1px solid transparent;
                    border-radius: 4px;
                }
                .primary-btn{
                    
                    color: #fff;
                    background-color: #337ab7;
                    border-color: #2e6da4;
                }
                .update-container button{
                        width: 100%;
                        padding: 10px;
                        background-color: #337ab7;
                        border: 0;
                        color: #fff;
                        font-weight: bold;
                        cursor: pointer;
                }
                
                .update-title{
                    text-align: center  ;
                } 
                 
                div.vertical-line{
                width: 0px; /* Use only border style */
                height: 100%;
                float: left; 
                border: 1px inset; /* This is default border style for <hr> tag */
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
                            <li><a href="account.jsp">Account</a></li>
                            <li class="active">Update Information</li>
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
                            
                            <div class="option">
                            <a href="view-account.jsp">
                                + ACCOUNT INFORMATION
                            </a>
                            </div>
                            <br>
                            <div class="option">
                            <a href="view-addressKhai.jsp">
                                + ADDRESS
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
                    <div class="update-address-form col-md-8">
                    
                    <form data-v-15e3e196>
                        <div class="update-container">
                            <div class="update-title">
                                <h3>UPDATE ADDRESS</h3>
                            </div>
                        <div class="field required">
                            <label for="text">City:</label>
                            <input class="input-form" type="text" placeholder="Your city", data-v-15e3e196><!-- comment -->
                        </div>
                        <div class="field required" data-v-15e3e196>
                             <label for="text">District:</label>
                            <input class="input-form" type="text" placeholder="Your district", data-v-15e3e196><!-- comment -->
                        </div><!-- comment -->
                        <div class="field required" data-v-15e3e196>
                             <label for="text">Street:</label>
                            <input class="input-form" type="text" placeholder="Your street", data-v-15e3e196><!-- comment -->
                        </div>
                        
                        <div class="field required" data-v-15e3e196>
                             <label for="text">Others:</label>
                            <input class="input-form" type="text" placeholder="More information about your address", data-v-15e3e196><!-- comment -->
                        </div>
                        
                        <div class="field" data-v-15e3e196>
                            <button class="primary primary-btn" type="submit" data-v-15e3e196>
                                Update
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