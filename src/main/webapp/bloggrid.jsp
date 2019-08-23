<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/19
  Time: 8:54
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

<div class="hero common-hero">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="hero-ct">
                    <h1> blog listing - grid</h1>
                    <ul class="breadcumb">
                        <li class="active"><a href="">Home</a></li>
                        <li> <span class="ion-ios-arrow-right"></span> blog listing</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- blog grid section-->
<div class="page-single">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="blog-item-style-2">
                            <a href="blogdetail.jsp"><img src="images/uploads/blogv21.jpg" alt=""></a>
                            <div class="blog-it-infor">
                                <h3><a href="blogdetail.jsp">Godzilla: King Of The Monsters Adds O’Shea Jackson Jr</a></h3>
                                <span class="time">27 Mar 2017</span>
                                <p>Looks like Kong: Skull Island started a tradition with its casting of Straight ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="blog-item-style-2">
                            <a href="blogdetail.jsp"><img src="images/uploads/blogv22.jpg" alt=""></a>
                            <div class="blog-it-infor">
                                <h3><a href="blogdetail.jsp">First Official Images of Alicia Vikander As Tomb Raider’s Lara Croft</a></h3>
                                <span class="time">27 Mar 2017</span>
                                <p>Aside from the her digital incarnation, the most recognisable image of Tomb ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="blog-item-style-2">
                            <a href="blogdetail.jsp"><img src="images/uploads/blogv23.jpg" alt=""></a>
                            <div class="blog-it-infor">
                                <h3><a href="blogdetail.jsp">The Boss Baby Holds On At The Top US Box Office</a></h3>
                                <span class="time">27 Mar 2017</span>
                                <p>He might be a primary protector of New York City, but at heart, Peter Parker is ...</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="blog-item-style-2">
                            <a href="blogdetail.jsp"><img src="images/uploads/blogv24.jpg" alt=""></a>
                            <div class="blog-it-infor">
                                <h3><a href="blogdetail.jsp">Stephen King and Owen King's Novel Sleeping Beauties Being</a></h3>
                                <span class="time">27 Mar 2017</span>
                                <p>It's starting to feel like the seventies and eighties all over again, with ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="blog-item-style-2">
                            <a href="blogdetail.jsp"><img src="images/uploads/blogv29.jpg" alt=""></a>
                            <div class="blog-it-infor">
                                <h3><a href="blogdetail.jsp">Pablo Larrain Directing Tom Hardy In The True American</a></h3>
                                <span class="time">27 Mar 2017</span>
                                <p>Back in 2014, it looked like Tom Hardy would be starring for Kathryn...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="blog-item-style-2">
                            <a href="blogdetail.jsp"><img src="images/uploads/blog29.jpg" alt=""></a>
                            <div class="blog-it-infor">
                                <h3><a href="blogdetail.jsp">Michael Keaton Looking To Play A Villain In Dumbo</a></h3>
                                <span class="time">27 Mar 2017</span>
                                <p>Michael Keaton and Tim Burton haven't collaborated since Batman Returns, but .</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="blog-item-style-2">
                            <a href="blogdetail.jsp"><img src="images/uploads/blog27.jpg" alt=""></a>
                            <div class="blog-it-infor">
                                <h3><a href="blogdetail.jsp">Sam Mendes In Talks To Develop Graphic Novel </a></h3>
                                <span class="time">27 Mar 2017</span>
                                <p>We already know that Shailene Woodley and Miles Teller have chemistry of ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="blog-item-style-2">
                            <a href="blogdetail.jsp"><img src="images/uploads/blog26.jpg" alt=""></a>
                            <div class="blog-it-infor">
                                <h3><a href="blogdetail.jsp">Eric Roth To Write Dune For Denis Villeneuve</a></h3>
                                <span class="time">27 Mar 2017</span>
                                <p>Though the idea of tackling Frank Herbert's imposing Dune books might send a ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="blog-item-style-2">
                            <a href="blogdetail.jsp"><img src="images/uploads/blogv25.jpg" alt=""></a>
                            <div class="blog-it-infor">
                                <h3><a href="blogdetail.jsp">John Simm Returning To Doctor Who As The Master</a></h3>
                                <span class="time">27 Mar 2017</span>
                                <p>John Simm's cackling, lunatic regeneration of The Master hasn't been seen on...</p>
                            </div>
                        </div>
                    </div>
                </div>
                <ul class="pagination">
                    <li class="icon-prev"><a href=""><i class="ion-ios-arrow-left"></i></a></li>
                    <li class="active"><a href="">1</a></li>
                    <li><a href="">2</a></li>
                    <li><a href="">3</a></li>
                    <li><a href="">4</a></li>
                    <li><a href="">...</a></li>
                    <li><a href="">21</a></li>
                    <li><a href="">22</a></li>
                    <li class="icon-next"><a href=""><i class="ion-ios-arrow-right"></i></a></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="sidebar">
                    <div class="sb-search sb-it">
                        <h4 class="sb-title">Search</h4>
                        <input type="text" placeholder="Enter keywords">
                    </div>
                    <div class="sb-cate sb-it">
                        <h4 class="sb-title">Categories</h4>
                        <ul>
                            <li><a href="">Awards (50)</a></li>
                            <li><a href="">Box office (38)</a></li>
                            <li><a href="">Film reviews (72)</a></li>
                            <li><a href="">News (45)</a></li>
                            <li><a href="">Global (06)</a></li>
                        </ul>
                    </div>
                    <div class="sb-recentpost sb-it">
                        <h4 class="sb-title">most popular</h4>
                        <div class="recent-item">
                            <span>01</span><h6><a href="">Korea Box Office: Beauty and the Beast Wins Fourth</a></h6>
                        </div>
                        <div class="recent-item">
                            <span>02</span><h6><a href="">Homeland Finale Includes Shocking Death </a></h6>
                        </div>
                        <div class="recent-item">
                            <span>03</span><h6><a href="">Fate of the Furious Reviews What the Critics Saying</a></h6>
                        </div>
                    </div>
                    <div class="sb-tags sb-it">
                        <h4 class="sb-title">tags</h4>
                        <ul class="tag-items">
                            <li><a href="">Batman</a></li>
                            <li><a href="">film</a></li>
                            <li><a href="">homeland</a></li>
                            <li><a href="">Fast & Furious</a></li>
                            <li><a href="">Dead Walker</a></li>
                            <li><a href="">King</a></li>
                            <li><a href="">Beauty</a></li>
                        </ul>
                    </div>
                    <div class="ads">
                        <img src="images/uploads/ads1.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--end of  blog grid section-->
<!-- footer section-->
<%@include file="footer.txt"%>
<!-- end of footer section-->

<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
