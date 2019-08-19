<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/19
  Time: 9:04
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

<div class="hero user-hero">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="hero-ct">
                    <h1>Edward kennedy’s profile</h1>
                    <ul class="breadcumb">
                        <li class="active"><a href="#">Home</a></li>
                        <li> <span class="ion-ios-arrow-right"></span>Favorite movies</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-single">
    <div class="container">
        <div class="row ipad-width2">
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="user-information">
                    <div class="user-img">
                        <a href="#"><img src="images/uploads/user-img.png" alt=""><br></a>
                        <a href="#" class="redbtn">Change avatar</a>
                    </div>
                    <div class="user-fav">
                        <p>Account Details</p>
                        <ul>
                            <li><a href="userprofile.jsp">Profile</a></li>
                            <li class="active"><a href="userfavoritelist.jsp">Favorite movies</a></li>
                            <li><a href="userrate.jsp">Rated movies</a></li>
                        </ul>
                    </div>
                    <div class="user-fav">
                        <p>Others</p>
                        <ul>
                            <li><a href="#">Change password</a></li>
                            <li><a href="#">Log out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="topbar-filter user">
                    <p>Found <span>1,608 movies</span> in total</p>
                    <label>Sort by:</label>
                    <select>
                        <option value="range">-- Choose option --</option>
                        <option value="saab">-- Choose option 2--</option>
                    </select>
                    <a href="userfavoritelist.jsp" class="list"><i class="ion-ios-list-outline "></i></a>
                    <a href="userfavoritegrid.jsp" class="grid"><i class="ion-grid active"></i></a>
                </div>
                <div class="flex-wrap-movielist grid-fav">
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv1.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">oblivion</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>8.1</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv2.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">into the wild</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.8</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item3.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">Die hard</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>


                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item4.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">The walk</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv3.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">blade runner  </a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.3</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv4.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">Mulholland pride</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.2</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv5.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">skyfall: evil of boss</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.0</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item1.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">Interstellar</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item2.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">The revenant</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-it10.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">harry potter</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-it11.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">guardians galaxy</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-it12.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">the godfather</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item6.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">blue velvet</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item7.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">gravity</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item8.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">southpaw</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-it9.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">jurassic park</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item9.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">the forest</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item10.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">spectre</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item11.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">strager things</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1 style-3">
                        <img src="images/uploads/mv-item12.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="moviesingle.jsp">la la land</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                </div>
                <div class="topbar-filter">
                    <label>Movies per page:</label>
                    <select>
                        <option value="range">20 Movies</option>
                        <option value="saab">10 Movies</option>
                    </select>

                    <div class="pagination2">
                        <span>Page 1 of 2:</span>
                        <a class="active" href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">...</a>
                        <a href="#">78</a>
                        <a href="#">79</a>
                        <a href="#"><i class="ion-arrow-right-b"></i></a>
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
