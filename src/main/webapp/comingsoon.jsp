<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/19
  Time: 8:59
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


<div class="page-single-2">
    <div class="container">
        <div class="row ipad-width">
            <div class="left-content">
                <a href="index1.jsp"><img class="md-logo" src="images/logo1.png" alt=""></a>
                <h1>Coming soon</h1>
                <p>We are working hard to get back to you in</p>
                <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="coming-ct">
                            <div id="clockdiv" class="time">
                                <div class="it-time">
                                    <span class="days"></span><br>
                                    <p>days</p>
                                </div>

                                <div class="it-time">
                                    <span class="hours"></span><br>
                                    <p>hours</p>
                                </div>
                                <div class="it-time">
									<span class="minutes">
									</span><br>
                                    <p>Minutes</p>
                                </div>
                                <div class="it-time">
									<span class="seconds">
									</span><br>
                                    <p>Seconds</p>
                                </div>
                            </div>
                        </div>
                        <h3>Nofication me</h3>
                        <form action="">
                            <input class="email" type="text" placeholder="Enter your email">
                            <input class="redbtn" type="submit" placeholder="subscribe">
                        </form>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <img class="cm-img" src="images/uploads/cm-img.png" alt="">
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
