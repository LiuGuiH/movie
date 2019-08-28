<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/19
  Time: 9:03
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
    <link rel="stylesheet" href="css/rating_star.css">
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

<div class="hero sr-single-hero sr-single">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- <h1> movie listing - list</h1>
                <ul class="breadcumb">
                    <li class="active"><a href="">Home</a></li>
                    <li> <span class="ion-ios-arrow-right"></span> movie listing</li>
                </ul> -->
            </div>
        </div>
    </div>
</div>
<div class="page-single movie-single movie_single">
    <div class="container">
        <div class="row ipad-width2">
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="movie-img sticky-sb">
                    <img src="${tvPlay.tvuri}" alt="">
                    <div class="movie-btn">
                        <div class="btn-transform transform-vertical red">
                            <div><a href="" class="item item-1 redbtn"> <i class="ion-play"></i> Watch Trailer</a></div>
                            <div><a href="https://www.youtube.com/embed/o-0hcF97wy0" class="item item-2 redbtn fancybox-media hvr-grow"><i class="ion-play"></i></a></div>
                        </div>
                        <div class="btn-transform transform-vertical">
                            <div><a href="" class="item item-1 yellowbtn"> <i class="ion-card"></i> Buy ticket</a></div>
                            <div><a href="" class="item item-2 yellowbtn"><i class="ion-card"></i></a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="movie-single-ct main-content">
                    <h1 class="bd-hd">${tvPlay.tvname}</h1>
                    <div class="social-btn">
                        <a id="heart" class="parent-btn">
                            <c:if test="${tvPlayStatus==null}">
                                <i id="change-heart" class="ion-ios-heart-outline"></i>
                            </c:if>
                            <c:if test="${tvPlayStatus!=null}">
                                <i id="change-heart" class="ion-ios-heart"></i>
                            </c:if>
                            Add to Favorite
                        </a>
                        <div class="hover-bnt">
                            <a href="" class="parent-btn"><i class="ion-android-share-alt"></i>share</a>
                            <div class="hvr-item">
                                <a href="" class="hvr-grow"><i class="ion-social-facebook"></i></a>
                                <a href="" class="hvr-grow"><i class="ion-social-twitter"></i></a>
                                <a href="" class="hvr-grow"><i class="ion-social-googleplus"></i></a>
                                <a href= class="hvr-grow"><i class="ion-social-youtube"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="movie-rate">
                        <div class="rate">
                            <i class="ion-android-star"></i>
                            <p><span>${tvPlay.tvstar}</span> /10<br>
                                <span class="rv">56 Reviews</span>
                            </p>
                        </div>
                        <div class="rate-star">
                            <p>Rate This Movie:  </p>
                            <c:forEach begin="1" end="${ts}">
                                <i class="ion-ios-star"></i>
                            </c:forEach>
                            <c:forEach end="${10-ts}" begin="1">
                                <i class="ion-ios-star-outline"></i>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="movie-tabs">
                        <div class="tabs">
                            <ul class="tab-links tabs-mv tabs-series">
                                <li class="active"><a href="#overview">Overview</a></li>
                                <li><a href="#reviews"> Reviews</a></li>
                                <li><a href="#cast">  Cast & Crew </a></li>
                                <li><a href="#media"> Media</a></li>
                                <li><a href="#season"> Season</a></li>
                                <li ><a href="#moviesrelated"> Related Shows</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="overview" class="tab active">
                                    <div class="row">
                                        <div class="col-md-8 col-sm-12 col-xs-12">
                                            <p>${tvPlay.tvoverview}</p>
                                            <div class="title-hd-sm">
                                                <h4>Videos & Photos</h4>
                                                <a href="" class="time">All 5 Videos & 245 Photos <i class="ion-ios-arrow-right"></i></a>
                                            </div>
                                            <div class="mvsingle-item ov-item">
                                                <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image41.jpg" ><img src="images/uploads/image4.jpg" alt=""></a>
                                                <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image51.jpg" ><img src="images/uploads/image5.jpg" alt=""></a>
                                                <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image61.jpg" ><img src="images/uploads/image6.jpg" alt=""></a>
                                                <div class="vd-it">
                                                    <img class="vd-img" src="images/uploads/image7.jpg" alt="">
                                                    <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0"><img src="images/uploads/play-vd.png" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="title-hd-sm">
                                                <h4>cast</h4>
                                                <a href="" class="time">Full Cast & Crew  <i class="ion-ios-arrow-right"></i></a>
                                            </div>
                                            <!-- movie cast -->
                                            <div class="mvcast-item">
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img src="images/uploads/cast1.jpg" alt="">
                                                        <a href="">Robert Downey Jr.</a>
                                                    </div>
                                                    <p>...  Robert Downey Jr.</p>
                                                </div>
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img src="images/uploads/cast2.jpg" alt="">
                                                        <a href="">Chris Hemsworth</a>
                                                    </div>
                                                    <p>...  Thor</p>
                                                </div>
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img src="images/uploads/cast3.jpg" alt="">
                                                        <a href="">Mark Ruffalo</a>
                                                    </div>
                                                    <p>...  Bruce Banner/ Hulk</p>
                                                </div>
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img src="images/uploads/cast4.jpg" alt="">
                                                        <a href="">Chris Evans</a>
                                                    </div>
                                                    <p>...  Steve Rogers/ Captain America</p>
                                                </div>
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img src="images/uploads/cast5.jpg" alt="">
                                                        <a href="">Scarlett Johansson</a>
                                                    </div>
                                                    <p>...  Natasha Romanoff/ Black Widow</p>
                                                </div>
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img src="images/uploads/cast6.jpg" alt="">
                                                        <a href="">Jeremy Renner</a>
                                                    </div>
                                                    <p>...  Clint Barton/ Hawkeye</p>
                                                </div>
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img src="images/uploads/cast7.jpg" alt="">
                                                        <a href="">James Spader</a>
                                                    </div>
                                                    <p>...  Ultron</p>
                                                </div>
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img src="images/uploads/cast9.jpg" alt="">
                                                        <a href="">Don Cheadle</a>
                                                    </div>
                                                    <p>...  James Rhodes/ War Machine</p>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-md-4 col-xs-12 col-sm-12">
                                            <div class="sb-it">
                                                <h6>Director: </h6>
                                                <p><a href="">Mark Cendrowski</a></p>
                                            </div>
                                            <div class="sb-it">
                                                <h6>Writer: </h6>
                                                <p><a href=""> Chuck Lorre,</a> <a href="">Bill Prady</a></p>
                                            </div>
                                            <div class="sb-it">
                                                <h6>Stars: </h6>
                                                <p><a href="">Robert Downey Jr,</a> <a href="">Chris Evans,</a> <a href="">Mark Ruffalo,</a><a href=""> Scarlett Johansson</a></p>
                                            </div>
                                            <div class="sb-it">
                                                <h6>Genres:</h6>
                                                <p><a href="">Action, </a> <a href=""> Sci-Fi,</a> <a href="">Adventure</a></p>
                                            </div>
                                            <div class="sb-it">
                                                <h6>Release Date:</h6>
                                                <p>1 May 2006 (U.S.A)</p>
                                            </div>
                                            <div class="sb-it">
                                                <h6>Run Time:</h6>
                                                <p>22 min</p>
                                            </div>
                                            <div class="sb-it">
                                                <h6>MMPA Rating:</h6>
                                                <p>TV-14</p>
                                            </div>
                                            <div class="sb-it">
                                                <h6>Plot Keywords:</h6>
                                                <p class="tags">
                                                    <span class="time"><a href="">superhero</a></span>
                                                    <span class="time"><a href="">marvel universe</a></span>
                                                    <span class="time"><a href="">comic</a></span>
                                                    <span class="time"><a href="">blockbuster</a></span>
                                                    <span class="time"><a href="">final battle</a></span>
                                                </p>
                                            </div>
                                            <div class="ads">
                                                <img src="images/uploads/ads1.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="reviews" class="tab review">
                                    <div class="row" id="comment-append">
                                        <div class="rv-hd">
                                            <div class="div">
                                                <h3>Related Movies To</h3>
                                                <h2>${tvPlay.tvname}</h2>
                                            </div>
                                            <a href="" class="redbtn"  data-toggle="modal" data-target="#myModal">Write Review</a>
                                        </div>
                                        <div class="topbar-filter">
                                            <p>Found <span>${tvPlayComments.size()} reviews</span> in total</p>
                                        </div>
                                        <c:forEach items="${tvPlayComments}" var="tvPlayComment" varStatus="index">
                                            <div class="mv-user-review-item">
                                                <div class="user-infor">
                                                    <img src="images/uploads/userava1.jpg" alt="">
                                                    <div>
                                                        <h3>${tvPlayComment.commenttitle}</h3>
                                                        <div class="no-star">
                                                            <c:forEach begin="1" end="${tvPlayComment.commentstar}">
                                                                <i class="ion-ios-star"></i>
                                                            </c:forEach>
                                                            <c:forEach end="${10-tvPlayComment.commentstar}" begin="1">
                                                                <i class="ion-ios-star-outline"></i>
                                                            </c:forEach>
                                                        </div>
                                                        <p class="time">
                                                                ${tvPlayComment.commenttime} by <a href=""> ${usernames.get(index.index)}</a>
                                                        </p>
                                                    </div>
                                                </div>
                                                <p>${tvPlayComment.commentcontent}</p>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div id="cast" class="tab">
                                    <div class="row">
                                        <h3>Cast & Crew of</h3>
                                        <h2>Avengers: Age of Ultron</h2>
                                        <!-- //== -->
                                        <div class="title-hd-sm">
                                            <h4>Directors & Credit Writers</h4>
                                        </div>
                                        <div class="mvcast-item">
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>JW</h4>
                                                    <a href="">Joss Whedon</a>
                                                </div>
                                                <p>...  Director</p>
                                            </div>
                                        </div>
                                        <!-- //== -->
                                        <div class="title-hd-sm">
                                            <h4>Directors & Credit Writers</h4>
                                        </div>
                                        <div class="mvcast-item">
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>SL</h4>
                                                    <a href="">Stan Lee</a>
                                                </div>
                                                <p>...  (based on Marvel comics)</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>JK</h4>
                                                    <a href="">Jack Kirby</a>
                                                </div>
                                                <p>...  (based on Marvel comics)</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>JS</h4>
                                                    <a href="">Joe Simon</a>
                                                </div>
                                                <p>...  (character created by: Captain America)</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>JS</h4>
                                                    <a href="">Joe Simon</a>
                                                </div>
                                                <p>...  (character created by: Thanos)</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>RT</h4>
                                                    <a href="">Roy Thomas</a>
                                                </div>
                                                <p>...  (character created by: Ultron, Vision)</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>JB</h4>
                                                    <a href="">John Buscema</a>
                                                </div>
                                                <p>...  (character created by: Ultron, Vision)</p>
                                            </div>
                                        </div>
                                        <!-- //== -->
                                        <div class="title-hd-sm">
                                            <h4>Cast</h4>
                                        </div>
                                        <div class="mvcast-item">
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <img src="images/uploads/cast1.jpg" alt="">
                                                    <a href="">Robert Downey Jr.</a>
                                                </div>
                                                <p>...  Robert Downey Jr.</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <img src="images/uploads/cast2.jpg" alt="">
                                                    <a href="">Chris Hemsworth</a>
                                                </div>
                                                <p>...  Thor</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <img src="images/uploads/cast3.jpg" alt="">
                                                    <a href="">Mark Ruffalo</a>
                                                </div>
                                                <p>...  Bruce Banner/ Hulk</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <img src="images/uploads/cast4.jpg" alt="">
                                                    <a href="">Chris Evans</a>
                                                </div>
                                                <p>...  Steve Rogers/ Captain America</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <img src="images/uploads/cast5.jpg" alt="">
                                                    <a href="">Scarlett Johansson</a>
                                                </div>
                                                <p>...  Natasha Romanoff/ Black Widow</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <img src="images/uploads/cast6.jpg" alt="">
                                                    <a href="">Jeremy Renner</a>
                                                </div>
                                                <p>...  Clint Barton/ Hawkeye</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <img src="images/uploads/cast7.jpg" alt="">
                                                    <a href="">James Spader</a>
                                                </div>
                                                <p>...  Ultron</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <img src="images/uploads/cast9.jpg" alt="">
                                                    <a href="">Don Cheadle</a>
                                                </div>
                                                <p>...  James Rhodes/ War Machine</p>
                                            </div>
                                        </div>
                                        <!-- //== -->
                                        <div class="title-hd-sm">
                                            <h4>Produced by</h4>
                                        </div>
                                        <div class="mvcast-item">
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>VA</h4>
                                                    <a href="">Victoria Alonso</a>
                                                </div>
                                                <p>...  executive producer</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>MB</h4>
                                                    <a href="">Mitchel Bell</a>
                                                </div>
                                                <p>...  co-producer (as Mitch Bell)</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>JC</h4>
                                                    <a href="">Jamie Christopher</a>
                                                </div>
                                                <p>...  associate producer</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>LD</h4>
                                                    <a href="">Louis D’Esposito</a>
                                                </div>
                                                <p>...  executive producer</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>JF</h4>
                                                    <a href="">Jon Favreau</a>
                                                </div>
                                                <p>...  executive producer</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>KF</h4>
                                                    <a href="">Kevin Feige</a>
                                                </div>
                                                <p>...  producer</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>AF</h4>
                                                    <a href="">Alan Fine</a>
                                                </div>
                                                <p>...  executive producer</p>
                                            </div>
                                            <div class="cast-it">
                                                <div class="cast-left">
                                                    <h4>JF</h4>
                                                    <a href="">Jeffrey Ford</a>
                                                </div>
                                                <p>...  associate producer</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="media" class="tab">
                                    <div class="row">
                                        <div class="rv-hd">
                                            <div>
                                                <h3>Videos & Photos of</h3>
                                                <h2>${tvPlay.tvname}</h2>
                                            </div>
                                        </div>
                                        <div class="title-hd-sm">
                                            <h4>Videos <span>(8)</span></h4>
                                        </div>
                                        <div class="mvsingle-item media-item">
                                            <div class="vd-item">
                                                <div class="vd-it">
                                                    <img class="vd-img" src="images/uploads/vd-item1.jpg" alt="">
                                                    <a class="fancybox-media hvr-grow"  href="https://www.youtube.com/embed/o-0hcF97wy0"><img src="images/uploads/play-vd.png" alt=""></a>
                                                </div>
                                                <div class="vd-infor">
                                                    <h6> <a href="">Trailer:  Watch New Scenes</a></h6>
                                                    <p class="time"> 1: 31</p>
                                                </div>
                                            </div>
                                            <div class="vd-item">
                                                <div class="vd-it">
                                                    <img class="vd-img" src="images/uploads/vd-item2.jpg" alt="">
                                                    <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0"><img src="images/uploads/play-vd.png" alt=""></a>
                                                </div>
                                                <div class="vd-infor">
                                                    <h6> <a href="">Featurette: “Avengers Re-Assembled</a></h6>
                                                    <p class="time"> 1: 03</p>
                                                </div>
                                            </div>
                                            <div class="vd-item">
                                                <div class="vd-it">
                                                    <img class="vd-img" src="images/uploads/vd-item3.jpg" alt="">
                                                    <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0"><img src="images/uploads/play-vd.png" alt=""></a>
                                                </div>
                                                <div class="vd-infor">
                                                    <h6> <a href="">Interview: Robert Downey Jr</a></h6>
                                                    <p class="time"> 3:27</p>
                                                </div>
                                            </div>
                                            <div class="vd-item">
                                                <div class="vd-it">
                                                    <img class="vd-img" src="images/uploads/vd-item4.jpg" alt="">
                                                    <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0"><img src="images/uploads/play-vd.png" alt=""></a>
                                                </div>
                                                <div class="vd-infor">
                                                    <h6> <a href="">Interview: Scarlett Johansson</a></h6>
                                                    <p class="time"> 3:27</p>
                                                </div>
                                            </div>
                                            <div class="vd-item">
                                                <div class="vd-it">
                                                    <img class="vd-img" src="images/uploads/vd-item1.jpg" alt="">
                                                    <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0"><img src="images/uploads/play-vd.png" alt=""></a>
                                                </div>
                                                <div class="vd-infor">
                                                    <h6> <a href="">Featurette: Meet Quicksilver & The Scarlet Witch</a></h6>
                                                    <p class="time"> 1: 31</p>
                                                </div>
                                            </div>
                                            <div class="vd-item">
                                                <div class="vd-it">
                                                    <img class="vd-img" src="images/uploads/vd-item2.jpg" alt="">
                                                    <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0"><img src="images/uploads/play-vd.png" alt=""></a>
                                                </div>
                                                <div class="vd-infor">
                                                    <h6> <a href="">Interview: Director Joss Whedon</a></h6>
                                                    <p class="time"> 1: 03</p>
                                                </div>
                                            </div>
                                            <div class="vd-item">
                                                <div class="vd-it">
                                                    <img class="vd-img" src="images/uploads/vd-item3.jpg" alt="">
                                                    <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0"><img src="images/uploads/play-vd.png" alt=""></a>
                                                </div>
                                                <div class="vd-infor">
                                                    <h6> <a href="">Interview: Mark Ruffalo</a></h6>
                                                    <p class="time"> 3:27</p>
                                                </div>
                                            </div>
                                            <div class="vd-item">
                                                <div class="vd-it">
                                                    <img class="vd-img" src="images/uploads/vd-item4.jpg" alt="">
                                                    <a class="fancybox-media hvr-grow" href="https://www.youtube.com/embed/o-0hcF97wy0"><img src="images/uploads/play-vd.png" alt=""></a>
                                                </div>
                                                <div class="vd-infor">
                                                    <h6> <a href="">Official Trailer #2</a></h6>
                                                    <p class="time"> 3:27</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title-hd-sm">
                                            <h4>Photos <span> (21)</span></h4>
                                        </div>
                                        <div class="mvsingle-item">
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image11.jpg" ><img src="images/uploads/image1.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image21.jpg" ><img src="images/uploads/image2.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image31.jpg" ><img src="images/uploads/image3.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image41.jpg" ><img src="images/uploads/image4.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image51.jpg" ><img src="images/uploads/image5.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image61.jpg" ><img src="images/uploads/image6.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image71.jpg" ><img src="images/uploads/image7.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image81.jpg" ><img src="images/uploads/image8.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image91.jpg" ><img src="images/uploads/image9.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image101.jpg" ><img src="images/uploads/image10.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image111.jpg" ><img src="images/uploads/image1-1.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image121.jpg" ><img src="images/uploads/image12.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image131.jpg" ><img src="images/uploads/image13.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image141.jpg" ><img src="images/uploads/image14.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image151.jpg" ><img src="images/uploads/image15.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image161.jpg" ><img src="images/uploads/image16.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image171.jpg" ><img src="images/uploads/image17.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image181.jpg" ><img src="images/uploads/image18.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image191.jpg" ><img src="images/uploads/image19.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image201.jpg" ><img src="images/uploads/image20.jpg" alt=""></a>
                                            <a class="img-lightbox"  data-fancybox-group="gallery" href="images/uploads/image211.jpg" ><img src="images/uploads/image2-1.jpg" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div id="season" class="tab">
                                    <div class="row">
                                        <div class="mvcast-item">
                                            <div class="cast-it">
                                                <div class="cast-left series-it">
                                                    <img src="images/uploads/season.jpg" alt="">
                                                    <div>
                                                        <a href="">Season 10</a>
                                                        <p>21 Episodes</p>
                                                        <p>Season 10 of The Big Bang Theory premiered on
                                                            September 19, 2016.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mvcast-item">
                                            <div class="cast-it">
                                                <div class="cast-left series-it">
                                                    <img src="images/uploads/season.jpg" alt="">
                                                    <div>
                                                        <a href="">Season 10</a>
                                                        <p>21 Episodes</p>
                                                        <p>Season 10 of The Big Bang Theory premiered on
                                                            September 19, 2016.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mvcast-item">
                                            <div class="cast-it">
                                                <div class="cast-left series-it">
                                                    <img src="images/uploads/season.jpg" alt="">
                                                    <div>
                                                        <a href="">Season 10</a>
                                                        <p>21 Episodes</p>
                                                        <p>Season 10 of The Big Bang Theory premiered on
                                                            September 19, 2016.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mvcast-item">
                                            <div class="cast-it">
                                                <div class="cast-left series-it">
                                                    <img src="images/uploads/season.jpg" alt="">
                                                    <div>
                                                        <a href="">Season 10</a>
                                                        <p>21 Episodes</p>
                                                        <p>Season 10 of The Big Bang Theory premiered on
                                                            September 19, 2016.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mvcast-item">
                                            <div class="cast-it">
                                                <div class="cast-left series-it">
                                                    <img src="images/uploads/season.jpg" alt="">
                                                    <div>
                                                        <a href="">Season 10</a>
                                                        <p>21 Episodes</p>
                                                        <p>Season 10 of The Big Bang Theory premiered on
                                                            September 19, 2016.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mvcast-item">
                                            <div class="cast-it">
                                                <div class="cast-left series-it">
                                                    <img src="images/uploads/season.jpg" alt="">
                                                    <div>
                                                        <a href="">Season 10</a>
                                                        <p>21 Episodes</p>
                                                        <p>Season 10 of The Big Bang Theory premiered on
                                                            September 19, 2016.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="moviesrelated" class="tab">
                                    <div class="row">
                                        <h3>Related Movies To</h3>
                                        <h2>${tvPlay.tvname}</h2>
                                        <div class="topbar-filter">
                                            <p>Found <span>12 movies</span> in total</p>
                                        </div>
                                        <div class="movie-item-style-2">
                                            <img src="images/uploads/mv1.jpg" alt="">
                                            <div class="mv-item-infor">
                                                <h6><a href="">oblivion <span>(2012)</span></a></h6>
                                                <p class="rate"><i class="ion-android-star"></i><span>8.1</span> /10</p>
                                                <p class="describe">Earth's mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity...</p>
                                                <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                                <p>Director: <a href="">Joss Whedon</a></p>
                                                <p>Stars: <a href="">Robert Downey Jr.,</a> <a href="">Chris Evans,</a> <a href="">  Chris Hemsworth</a></p>
                                            </div>
                                        </div>
                                        <div class="movie-item-style-2">
                                            <img src="images/uploads/mv2.jpg" alt="">
                                            <div class="mv-item-infor">
                                                <h6><a href="">into the wild <span>(2014)</span></a></h6>
                                                <p class="rate"><i class="ion-android-star"></i><span>7.8</span> /10</p>
                                                <p class="describe">As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat...</p>
                                                <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                                <p>Director: <a href="">Anthony Russo,</a><a href="">Joe Russo</a></p>
                                                <p>Stars: <a href="">Chris Evans,</a> <a href="">Samuel L. Jackson,</a> <a href="">  Scarlett Johansson</a></p>
                                            </div>
                                        </div>
                                        <div class="movie-item-style-2">
                                            <img src="images/uploads/mv3.jpg" alt="">
                                            <div class="mv-item-infor">
                                                <h6><a href="">blade runner  <span>(2015)</span></a></h6>
                                                <p class="rate"><i class="ion-android-star"></i><span>7.3</span> /10</p>
                                                <p class="describe">Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help...</p>
                                                <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                                <p>Director: <a href="">Peyton Reed</a></p>
                                                <p>Stars: <a href="">Paul Rudd,</a> <a href=""> Michael Douglas</a></p>
                                            </div>
                                        </div>
                                        <div class="movie-item-style-2">
                                            <img src="images/uploads/mv4.jpg" alt="">
                                            <div class="mv-item-infor">
                                                <h6><a href="">Mulholland pride<span> (2013)  </span></a></h6>
                                                <p class="rate"><i class="ion-android-star"></i><span>7.2</span> /10</p>
                                                <p class="describe">When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.</p>
                                                <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                                <p>Director: <a href="">Shane Black</a></p>
                                                <p>Stars: <a href="">Robert Downey Jr., </a> <a href="">  Guy Pearce,</a><a href="">Don Cheadle</a></p>
                                            </div>
                                        </div>
                                        <div class="movie-item-style-2">
                                            <img src="images/uploads/mv5.jpg" alt="">
                                            <div class="mv-item-infor">
                                                <h6><a href="">${tvPlay.tvname}</a></h6>
                                                <p class="rate"><i class="ion-android-star"></i><span>7.0</span> /10</p>
                                                <p class="describe">When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.</p>
                                                <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                                <p>Director: <a href="">Alan Taylor</a></p>
                                                <p>Stars: <a href="">Chris Hemsworth,  </a> <a href="">  Natalie Portman,</a><a href="">Tom Hiddleston</a></p>
                                            </div>
                                        </div>
                                        <div class="topbar-filter">
                                            <label>Movies per page:</label>
                                            <select>
                                                <option value="range">5 Movies</option>
                                                <option value="saab">10 Movies</option>
                                            </select>
                                            <div class="pagination2">
                                                <span>Page 1 of 2:</span>
                                                <a class="active" href="">1</a>
                                                <a href="">2</a>
                                                <a href=""><i class="ion-arrow-right-b"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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

<%--模态框start--%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
        <div class="modal-content" style="background-color: #071829;color: white">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">评论</h4>
            </div>
            <div class="modal-body" style="height: 450px">
                <label>标题：</label>
                <h5><input type="text" name="title" id="title" /></h5>
                <p></p>
                <label>你的评价：</label><p></p>
                <input name="my_input" value="1" id="rating_simple2" type="hidden" /><p></p>
                <label>你的看法：</label>
                <textarea type="text" name="myReview" id="myReview" placeholder="最多为255个字节"  cols="70" rows="10" maxlength="255" style="height: 250px"></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: #071829">关闭</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="review" style="background-color: #071829">提交</button>
            </div>
        </div>
    </div>
</div>
<%--模态框end--%>

<script src="js/jquery-3.4.1.js"></script>
<script src="js/rating_star.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>

<script language="javascript" type="text/javascript">

    $(function () {
        $("#rating_simple2").webwidget_rating_sex({
            rating_star_length: '10',
            rating_initial_value: '1',
            rating_function_name: '',
            directory: 'images/'
        });
        $("#review").click(function () {
            var title=document.getElementById("title").value;
            var star=document.getElementById("rating_simple2").value;
            var content=document.getElementById("myReview").value;
            $.ajax({
                type:"GET",
                url:"tvplayComment",
                data:{"title":title,"star":star,"content":content,"userid":"${user.userid}","tvid":"${tvPlay.tvid}"},
                datatype:"json",
                success:function (result) {
                    var star=result.commentstar;
                    var title=result.commenttitle;
                    var content=result.commentcontent;
                    var time=result.commenttime;
                    var stars="";
                    for(var i=0;i<star;i++){
                        stars=stars+"<i class=\"ion-ios-star\"></i>";
                    }
                    for (var i=0;i<10-star;i++) {
                        stars=stars+"<i class=\"ion-ios-star-outline\"></i>";
                    }
                    $("#comment-append").append("<div class=\"mv-user-review-item\"><div class=\"user-infor\"><img src=\"images/uploads/userava1.jpg\" alt=\"\"><div><h3>"+title+"</h3><div class=\"no-star\">"+stars+"</div><p class=\"time\">"+time+" by <a href=\"\"> ${commentUsername}</a></p></div></div><p>"+content+"</p></div>");

                }
            })
        });
        $("#heart").click(function () {
            var className = document.getElementById("change-heart").className;
            if ("ion-ios-heart"==className){
                var flag=confirm("确定取消关注吗？")
                if (flag==true){
                    $("#change-heart").attr("class","ion-ios-heart-outline");
                    $.ajax({
                        type:"GET",
                        url:"deleteFavoriteByTVPlayId",
                        data:{"tvplayid":${tvPlay.tvid},"userid":${user.userid}},
                        datatype:"json",
                        success:function (result) {
                            if (result=="false"){
                                alert("请前往登陆！")
                                window.location.href="${pageContext.request.contextPath}/";
                            }
                            console.log(result)
                        }
                    })
                }
            }else {
                $("#change-heart").attr("class","ion-ios-heart");
                $.ajax({
                    type:"GET",
                    url:"addFavoriteTVPlay",
                    data:{"tvplayid":${tvPlay.tvid},"userid":${user.userid}},
                    datatype:"json",
                    success:function (result) {
                        if (result=="false"){
                            alert("请前往登陆！")
                            window.location.href="${pageContext.request.contextPath}/";
                        }
                        console.log(result)
                    }
                })
            }

        })
    })


</script>
</body>
</html>
