<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/19
  Time: 9:01
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
                    <h1> movie listing - grid</h1>
                    <ul class="breadcumb">
                        <li class="active"><a href="#">Home</a></li>
                        <li> <span class="ion-ios-arrow-right"></span> movie listing</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-single">
    <div class="container">
        <div class="row ipad-width">
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="topbar-filter">
                    <p>Found <span>1,608 movies</span> in total</p>
                    <label>Sort by:</label>
                    <select>
                        <option value="popularity">Popularity Descending</option>
                        <option value="popularity">Popularity Ascending</option>
                        <option value="rating">Rating Descending</option>
                        <option value="rating">Rating Ascending</option>
                        <option value="date">Release date Descending</option>
                        <option value="date">Release date Ascending</option>
                    </select>
                    <a href="movielist.jsp" class="list"><i class="ion-ios-list-outline "></i></a>
                    <a href="moviegrid.jsp" class="grid"><i class="ion-grid active"></i></a>
                </div>
                <div class="flex-wrap-movielist">
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv1.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">oblivion</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>8.1</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv2.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">into the wild</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.8</span> /10</p>
                        </div>
                    </div>


                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item3.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">Die hard</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>


                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item4.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">The walk</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv3.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">blade runner  </a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.3</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv4.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">Mulholland pride</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.2</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv5.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">skyfall: evil of boss</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.0</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item1.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">Interstellar</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item2.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">The revenant</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-it10.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">harry potter</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-it11.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">guardians galaxy</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-it12.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">the godfather</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item6.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">blue velvet</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item7.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">gravity</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item8.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">southpaw</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-it9.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">jurassic park</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item9.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">the forest</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item10.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">spectre</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item11.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">strager things</a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item-style-2 movie-item-style-1">
                        <img src="images/uploads/mv-item12.jpg" alt="">
                        <div class="hvr-inner">
                            <a  href="moviesingle.jsp"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="mv-item-infor">
                            <h6><a href="#">la la land</a></h6>
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
                                    </select>
                                </div>
                                <div class="col-md-12 form-it">
                                    <label>Release Year</label>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <select>
                                                <option value="range">From</option>
                                                <option value="number">10</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <select>
                                                <option value="range">To</option>
                                                <option value="number">20</option>
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
