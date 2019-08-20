<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/19
  Time: 9:02
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
    <link rel="profile" href="#">

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

<div class="hero common-hero">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="hero-ct">
                    <h1> movie listing - list</h1>
                    <ul class="breadcumb">
                        <li class="active"><a href="#">Home</a></li>
                        <li> <span class="ion-ios-arrow-right"></span> movie listing</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-single movie_list">
    <div class="container">
        <div class="row ipad-width2">
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="topbar-filter">
                    <p>Found <span>${tvPlays.size()} tvPlays</span> in total</p>
                    <a href="tvplaylist" class="list"><i class="ion-ios-list-outline active"></i></a>
                </div>
                <div class="result-content">
                    <c:if test="${!empty pageInfo.list }">
                        <c:forEach items="${pageInfo.list}" var="tvplay">
                            <div class="movie-item-style-2">
                                <img src="${tvplay.tvuri}" alt="">
                                <div class="mv-item-infor">
                                    <h6><a href="moviesingle.jsp">${tvplay.tvname}</a></h6>
                                    <p class="rate"><i class="ion-android-star"></i><span>${tvplay.tvstar}</span> /10</p>
                                    <p class="describe">${tvplay.tvoverview}</p>
                                    <p>Director: <a href="#">Joss Whedon</a></p>
                                    <p>Stars: <a href="#">Robert Downey Jr.,</a> <a href="#">Chris Evans,</a> <a href="#">  Chris Hemsworth</a></p>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                    <hr style="height:1px;border:none;border-top:1px solid #ccc;" />
                    <!-- 分页导航栏 -->

                    <!-- 分页信息 -->

                    <!-- 分页文字信息，其中分页信息都封装在pageInfo中 -->
                    <div class="col-md-6">
                        当前第：${pageInfo.pageNum}页，总共：${pageInfo.pages}页，总共：${pageInfo.total}条记录
                    </div>

                    <!-- 分页条 -->
                    <div class="col-md-6">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li><a href="tvplaylist?pn=1" rel="external nofollow" >首页</a></li>
                                <c:if test="${pageInfo.hasPreviousPage }">
                                    <li>
                                        <a href="tvplaylist?pn=${pageInfo.pageNum-1}" rel="external nofollow" aria-label="Previous">
                                            <span aria-hidden="true">«</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                                    <c:if test="${page_Num == pageInfo.pageNum }">
                                        <li class="active"><a href="#" rel="external nofollow" >${ page_Num}</a></li>
                                    </c:if>
                                    <c:if test="${page_Num != pageInfo.pageNum }">
                                        <li><a href="tvplaylist?pn=${ page_Num}" rel="external nofollow" >${ page_Num}</a></li>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${pageInfo.hasNextPage }">
                                    <li>
                                        <a href="tvplaylist?pn=${pageInfo.pageNum+1}" rel="external nofollow" aria-label="Next">
                                            <span aria-hidden="true">»</span>
                                        </a>
                                    </li>
                                </c:if>
                                <li><a href="tvplaylist?pn=${pageInfo.pages}" rel="external nofollow" >末页</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="sidebar">
                    <div class="searh-form">
                        <h4 class="sb-title">Search for movie</h4>
                        <form class="form-style-1" action="#">
                            <div class="row">
                                <div class="col-md-12 form-it">
                                    <label>Movie name</label>
                                    <input type="text" placeholder="Enter keywords">
                                </div>
                                <div class="col-md-12 form-it">
                                    <label>Genres & Subgenres</label>
                                    <div class="group-ip">
                                        <select
                                                name="skills" multiple="" class="ui fluid dropdown">
                                            <option value="">Enter to filter genres</option>
                                            <option value="Action1">Action 1</option>
                                            <option value="Action2">Action 2</option>
                                            <option value="Action3">Action 3</option>
                                            <option value="Action4">Action 4</option>
                                            <option value="Action5">Action 5</option>
                                        </select>
                                    </div>

                                </div>
                                <div class="col-md-12 form-it">
                                    <label>Rating Range</label>

                                    <select>
                                        <option value="range">-- Select the rating range below --</option>
                                        <option value="saab">-- Select the rating range below --</option>
                                        <option value="saab">-- Select the rating range below --</option>
                                        <option value="saab">-- Select the rating range below --</option>
                                    </select>

                                </div>
                                <div class="col-md-12 form-it">
                                    <label>Release Year</label>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <select>
                                                <option value="range">From</option>
                                                <option value="number">10</option>
                                                <option value="number">20</option>
                                                <option value="number">30</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <select>
                                                <option value="range">To</option>
                                                <option value="number">20</option>
                                                <option value="number">30</option>
                                                <option value="number">40</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 ">
                                    <input class="submit" type="submit" value="submit">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="ads">
                        <img src="images/uploads/ads1.png" alt="">
                    </div>
                    <div class="sb-facebook sb-it">
                        <h4 class="sb-title">Find us on Facebook</h4>
                        <iframe src="" data-src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fhaintheme%2F%3Ffref%3Dts&tabs=timeline&width=340&height=315px&small_header=true&adapt_container_width=false&hide_cover=false&show_facepile=true&appId"  height="315" style="width:100%;border:none;overflow:hidden" ></iframe>
                    </div>
                    <div class="sb-twitter sb-it">
                        <h4 class="sb-title">Tweet to us</h4>
                        <div class="slick-tw">
                            <div class="tweet item" id="599202861751410688">
                            </div>
                            <div class="tweet item" id="297462728598122498">
                            </div>
                        </div>
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
