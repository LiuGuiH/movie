<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/19
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">
<head>
    <!-- Basic need -->
    <title>Open Pediatrics</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <link rel="profile" href="">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
    <!-- Mobile specific meta -->
    <meta name=viewport content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone-no">

    <!-- CSS files -->
    <link rel="stylesheet" href="css/plugins.css">
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<!--preloading-->
<div id="preloader">
    <img class="logo" src="images/logo1.png" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div>
<!--end of preloading-->

<!--login form popup-->
<%@include file="login.txt"%>
<!--end of login form popup-->
<!--signup form popup-->
<%@include file="signup.txt"%>
<!--end of signup form popup-->

<!-- BEGIN | Header -->
<%@include file="head.txt"%>
<!-- END | Header -->

<div class="hero user-hero">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="hero-ct">
                    <h1>Edward kennedy’s profile</h1>
                    <ul class="breadcumb">
                        <li class="active"><a href="">Home</a></li>
                        <li> <span class="ion-ios-arrow-right"></span>Profile</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-single">
    <div class="container">
        <div class="row ipad-width">
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="user-information">
                    <div class="user-img">
                        <a href=""><img src="images/uploads/user-img.png" alt=""><br></a>
                        <a href="" class="redbtn">Change avatar</a>
                    </div>
                    <div class="user-fav">
                        <p>Account Details</p>
                        <ul>
                            <li  class="active"><a href="userprofile.jsp">Profile</a></li>
                            <li><a href="userfavoritelist.jsp">Favorite movies</a></li>
                            <li><a href="userrate.jsp">Rated movies</a></li>
                        </ul>
                    </div>
                    <div class="user-fav">
                        <p>Others</p>
                        <ul>
                            <li><a href="">Change password</a></li>
                            <li><a href="">Log out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="form-style-1 user-pro" action="">
                    <form action="" class="user">
                        <h4>01. Profile details</h4>
                        <div class="row">
                            <div class="col-md-6 form-it">
                                <label>Username</label>
                                <input type="text" placeholder="edwardkennedy">
                            </div>
                            <div class="col-md-6 form-it">
                                <label>Email Address</label>
                                <input type="text" placeholder="edward@kennedy.com">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-it">
                                <label>First Name</label>
                                <input type="text" placeholder="Edward ">
                            </div>
                            <div class="col-md-6 form-it">
                                <label>Last Name</label>
                                <input type="text" placeholder="Kennedy">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-it">
                                <label>Country</label>
                                <select>
                                    <option value="united">United States</option>
                                    <option value="saab">Others</option>
                                </select>
                            </div>
                            <div class="col-md-6 form-it">
                                <label>State</label>
                                <select>
                                    <option value="united">New York</option>
                                    <option value="saab">Others</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <input class="submit" type="submit" value="save">
                            </div>
                        </div>
                    </form>
                    <form action="" class="password">
                        <h4>02. Change password</h4>
                        <div class="row">
                            <div class="col-md-6 form-it">
                                <label>Old Password</label>
                                <input type="text" placeholder="**********">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-it">
                                <label>New Password</label>
                                <input type="text" placeholder="***************">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-it">
                                <label>Confirm New Password</label>
                                <input type="text" placeholder="*************** ">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <input class="submit" type="submit" value="change">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- footer section-->
<%@include file="footer.txt"%>
<!-- end of footer section-->

<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
</body>
</html>