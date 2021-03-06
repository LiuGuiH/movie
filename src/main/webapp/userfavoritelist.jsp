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
                    <h1>${user.username}’s profile</h1>
                    <ul class="breadcumb">
                        <li class="active"><a href="">Home</a></li>
                        <li> <span class="ion-ios-arrow-right"></span>Favorite movies</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-single userfav_list">
    <div class="container">
        <div class="row ipad-width2">
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="user-information">
                    <div class="user-img">
                        <a href=""><img src="images/uploads/user-img.png" alt=""><br></a>
                    </div>
                    <div class="user-fav">
                        <ul>
                            <li><a href="userdetails?userid=${user.userid}">Account Details</a></li>
                            <li><a href="userprofile?userid=${user.userid}">Profile</a></li>
                            <li  class="active"><a href="userfavoritelist?userid=${user.userid}">Favorite movies</a></li>
                            <li><a href="userrate?userid=${user.userid}">Rated movies</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="topbar-filter user">
                    <p>Found <span>${userfavoritelist.total} show</span> in total</p>
                    <a href="userfavoritelist?userid=${user.userid}" class="list"><i class="ion-ios-list-outline active"></i></a>
                    <a href="userfavoritegrid?userid=${user.userid}" class="grid"><i class="ion-grid "></i></a>
                </div>
                <div class="flex-wrap-movielist user-fav-list">

                    <c:if test="${!empty userfavoritelist.list }">
                        <c:forEach items="${favoriteMovies}" var="movie">
                            <div class="movie-item-style-2">
                                <img src="${movie.movieuri}" alt="">
                                <div class="mv-item-infor">
                                    <h6><a href="moviesingle?movieid=${movie.movieid}">${movie.moviename}</a></h6>
                                    <p class="rate"><i class="ion-android-star"></i><span>${movie.moviestar}</span> /10</p>
                                    <p class="describe">${movie.movieoverview}</p>
                                    <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                    <p>Director: <a href="">Joss Whedon</a></p>
                                    <p>Stars: <a href="">Robert Downey Jr.,</a> <a href="">Chris Evans,</a> <a href="">  Chris Hemsworth</a></p>
                                </div>
                            </div>
                        </c:forEach>
                        <c:forEach items="${favoriteTVPlays}" var="tvplay">
                            <div class="movie-item-style-2">
                                <img src="${tvplay.tvuri}" alt="">
                                <div class="mv-item-infor">
                                    <h6><a href="seriessingle?tvid=${tvplay.tvid}">${tvplay.tvname}</a></h6>
                                    <p class="rate"><i class="ion-android-star"></i><span>${tvplay.tvstar}</span> /10</p>
                                    <p class="describe">${tvplay.tvoverview}</p>
                                    <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                    <p>Director: <a href="">Joss Whedon</a></p>
                                    <p>Stars: <a href="">Robert Downey Jr.,</a> <a href="">Chris Evans,</a> <a href="">  Chris Hemsworth</a></p>
                                </div>
                            </div>
                        </c:forEach>


                    </c:if>
                    <hr style="height:1px;border:none;border-top:1px solid #ccc;" />
                    <!-- 分页导航栏 -->

                    <!-- 分页信息 -->

                    <!-- 分页文字信息，其中分页信息都封装在userfavoritelist中 -->
                    <div class="col-md-6">
                        当前第：${userfavoritelist.pageNum}页，总共：${userfavoritelist.pages}页，总共：${userfavoritelist.total}条记录
                    </div>

                    <!-- 分页条 -->
                    <div class="col-md-6">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li><a href="userfavoritelist?pn=1&userid=${user.userid}" rel="external nofollow" >首页</a></li>
                                <c:if test="${userfavoritelist.hasPreviousPage }">
                                    <li>
                                        <a href="userfavoritelist?pn=${userfavoritelist.pageNum-1}&userid=${user.userid}" rel="external nofollow" aria-label="Previous">
                                            <span aria-hidden="true">«</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:forEach items="${userfavoritelist.navigatepageNums }" var="page_Num">
                                    <c:if test="${page_Num == userfavoritelist.pageNum }">
                                        <li class="active"><a href="" rel="external nofollow" >${ page_Num}</a></li>
                                    </c:if>
                                    <c:if test="${page_Num != userfavoritelist.pageNum }">
                                        <li><a href="userfavoritelist?pn=${ page_Num}&userid=${user.userid}" rel="external nofollow" >${ page_Num}</a></li>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${userfavoritelist.hasNextPage }">
                                    <li>
                                        <a href="userfavoritelist?pn=${userfavoritelist.pageNum+1}&userid=${user.userid}" rel="external nofollow" aria-label="Next">
                                            <span aria-hidden="true">»</span>
                                        </a>
                                    </li>
                                </c:if>
                                <li><a href="userfavoritelist?pn=${userfavoritelist.pages}&userid=${user.userid}" rel="external nofollow" >末页</a></li>
                            </ul>
                        </nav>
                    </div>

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
