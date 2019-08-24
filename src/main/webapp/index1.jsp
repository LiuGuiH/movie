<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/16
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
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

<div class="slider movie-items">
    <div class="container">
        <div class="row">
            <div  class="slick-multiItemSlider">
                <c:forEach items="${movies}" var="movie">
                    <div class="movie-item">
                        <div class="mv-img">
                            <a href=""><img src="${movie.movieuri}" alt="" width="285" height="437"></a>
                        </div>
                        <div class="hvr-inner">
                            <a  href="${pageContext.request.contextPath}/moviesingle?movieid=${movie.movieid}"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                        </div>
                        <div class="title-in">
                            <div class="cate">
                                <span class="blue"><a href="">${movie.movietype}</a></span>
                            </div>
                            <h6><a href="">${movie.moviename}</a></h6>
                            <p><i class="ion-android-star"></i><span>${movie.moviestar}</span> /10</p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<div class="movie-items">
    <div class="container">
        <div class="row ipad-width">
            <div class="col-md-8">
                <div class="title-hd">
                    <h2>in theater</h2>
                    <a href="movielist" class="viewall">View all <i class="ion-ios-arrow-right"></i></a>
                </div>
                <div class="tabs">
                    <ul class="tab-links">
                        <li class="active"><a href="#tab1">#Popular</a></li>
                        <li><a href="#tab2"> #Coming soon</a></li>
                        <li><a href="#tab3">  #Top rated  </a></li>
                        <li><a href="#tab4"> #Most reviewed</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab1" class="tab active">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <c:forEach items="${movies}" var="movie" begin="0" end="11">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="${movie.movieuri}" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a  href="${pageContext.request.contextPath}/moviesingle?movieid=${movie.movieid}"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="">${movie.moviename}</a></h6>
                                                    <p><i class="ion-android-star"></i><span>${movie.moviestar}</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div id="tab2" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <c:forEach items="${movies}" var="movie" begin="5" end="9">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="${movie.movieuri}" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a  href="${pageContext.request.contextPath}/moviesingle?movieid=${movie.movieid}"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="">${movie.moviename}</a></h6>
                                                    <p><i class="ion-android-star"></i><span>${movie.moviestar}</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div id="tab3" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <c:forEach items="${movies}" var="movie" begin="10" end="14">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="${movie.movieuri}" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a  href="${pageContext.request.contextPath}/moviesingle?movieid=${movie.movieid}"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="">${movie.moviename}</a></h6>
                                                    <p><i class="ion-android-star"></i><span>${movie.moviestar}</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div id="tab4" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <c:forEach items="${movies}" var="movie" begin="15" end="19">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="${movie.movieuri}" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a  href="${pageContext.request.contextPath}/moviesingle?movieid=${movie.movieid}"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="">${movie.moviename}</a></h6>
                                                    <p><i class="ion-android-star"></i><span>${movie.moviestar}</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="title-hd">
                    <h2>on tv</h2>
                    <a href="tvplaylist" class="viewall">View all <i class="ion-ios-arrow-right"></i></a>
                </div>
                <div class="tabs">
                    <ul class="tab-links-2">
                        <li><a href="#tab21">#Popular</a></li>
                        <li class="active"><a href="#tab22"> #Coming soon</a></li>
                        <li><a href="#tab23">  #Top rated  </a></li>
                        <li><a href="#tab24"> #Most reviewed</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab21" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <c:forEach items="${tvPlays}" var="tvPlay" begin="5" end="9">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="${tvPlay.tvuri}" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a  href="${pageContext.request.contextPath}/seriessingle?tvid=${tvPlay.tvid}"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="">${tvPlay.tvname}</a></h6>
                                                    <p><i class="ion-android-star"></i><span>${tvPlay.tvstar}</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div id="tab22" class="tab active">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <c:forEach items="${tvPlays}" var="tvPlay">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="${tvPlay.tvuri}" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a  href="${pageContext.request.contextPath}/seriessingle?tvid=${tvPlay.tvid}"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="">${tvPlay.tvname}</a></h6>
                                                    <p><i class="ion-android-star"></i><span>${tvPlay.tvstar}</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div id="tab23" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <c:forEach items="${tvPlays}" var="tvPlay" begin="3" end="7">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="${tvPlay.tvuri}" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a  href="${pageContext.request.contextPath}/seriessingle?tvid=${tvPlay.tvid}"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="">${tvPlay.tvname}</a></h6>
                                                    <p><i class="ion-android-star"></i><span>${tvPlay.tvstar}</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div id="tab24" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <c:forEach items="${tvPlays}" var="tvPlay" begin="1" end="5">
                                        <div class="slide-it">
                                            <div class="movie-item">
                                                <div class="mv-img">
                                                    <img src="${tvPlay.tvuri}" alt="" width="185" height="284">
                                                </div>
                                                <div class="hvr-inner">
                                                    <a  href="${pageContext.request.contextPath}/seriessingle?tvid=${tvPlay.tvid}"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                                </div>
                                                <div class="title-in">
                                                    <h6><a href="">${tvPlay.tvname}</a></h6>
                                                    <p><i class="ion-android-star"></i><span>${tvPlay.tvstar}</span> /10</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="sidebar">
                    <div class="celebrities">
                        <h4 class="sb-title">高分电影排行</h4>
                        <c:forEach items="${orders}" var="order">
                            <div class="celeb-item">
                                <a href=""><img src="${order.movieuri}" alt="" width="70" height="70"></a>
                                <div class="celeb-author">
                                    <h6><a href="${pageContext.request.contextPath}/moviesingle?movieid=${order.movieid}">${order.moviename}</a></h6>
                                    <span>${order.movietype}</span>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="trailers">
    <div class="container">
        <div class="row ipad-width">
            <div class="col-md-12">
                <div class="title-hd">
                    <h2>Advertisement</h2>
                    <a href="" class="viewall">View all <i class="ion-ios-arrow-right"></i></a>
                </div>
                <div class="videos">
                    <div class="slider-for-2 video-ft">
                        <div>
                            <img src="images/uploads/ads1.png" style="width: 800px;height: 430px">
                        </div>
                    </div>
                    <div class="slider-nav-2 thumb-ft">
                        <div class="item">
                            <div class="trailer-img">
                                <img src="images/uploads/trailer7.jpg" alt="photo by Barn Images" width="4096" height="2737">
                            </div>
                            <div class="trailer-infor">
                                <h4 class="desc">Wonder Woman</h4>
                                <p>2:30</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="trailer-img">
                                <img src="images/uploads/trailer2.jpg" alt="photo by Barn Images" width="350" height="200">
                            </div>
                            <div class="trailer-infor">
                                <h4 class="desc">Oblivion: Official Teaser Trailer</h4>
                                <p>2:37</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="trailer-img">
                                <img src="images/uploads/trailer6.jpg" alt="photo by Joshua Earle">
                            </div>
                            <div class="trailer-infor">
                                <h4 class="desc">Exclusive Interview:  Skull Island</h4>
                                <p>2:44</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="trailer-img">
                                <img src="images/uploads/trailer3.png" alt="photo by Alexander Dimitrov" width="100" height="56">
                            </div>
                            <div class="trailer-infor">
                                <h4 class="desc">Logan: Director James Mangold Interview</h4>
                                <p>2:43</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="trailer-img">
                                <img src="images/uploads/trailer4.png" alt="photo by Wojciech Szaturski" width="100" height="56">
                            </div>
                            <div class="trailer-infor">
                                <h4 class="desc">Beauty and the Beast: Official Teaser Trailer 2</h4>
                                <p>2: 32</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="trailer-img">
                                <img src="images/uploads/trailer5.jpg" alt="photo by Wojciech Szaturski" width="360" height="189">
                            </div>
                            <div class="trailer-infor">
                                <h4 class="desc">Fast&Furious 8</h4>
                                <p>3:11</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- latest new v1 section-->
<%--<div class="latestnew">
    <div class="container">
        <div class="row ipad-width">
            <div class="col-md-8">
                <div class="ads">
                    <img src="images/uploads/ads2.png" alt="" width="728" height="106">
                </div>
                <div class="title-hd">
                    <h2>Latest news</h2>
                </div>
                <div class="tabs">
                    <ul class="tab-links-3">
                        <li class="active"><a href="#tab31">#Movies </a></li>
                        <li><a href="#tab32"> #TV Shows </a></li>
                        <li><a href="#tab33">  # Celebs</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab31" class="tab active">
                            <div class="row">
                                <div class="blog-item-style-1">
                                    <img src="images/uploads/blog-it1.jpg" alt="" width="170" height="250">
                                    <div class="blog-it-infor">
                                        <h3><a href="">Brie Larson to play first female white house candidate Victoria Woodull in Amazon film</a></h3>
                                        <span class="time">13 hours ago</span>
                                        <p>Exclusive: <span>Amazon Studios </span>has acquired Victoria Woodhull, with Oscar winning Room star <span>Brie Larson</span> polsed to produce, and play the first female candidate for the presidency of the United States. Amazon bought it in a pitch package deal. <span> Ben Kopit</span>, who wrote the Warner Bros film <span>Libertine</span> that has...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab32" class="tab">
                            <div class="row">
                                <div class="blog-item-style-1">
                                    <img src="images/uploads/blog-it2.jpg" alt="" width="170" height="250">
                                    <div class="blog-it-infor">
                                        <h3><a href="">Tab 2</a></h3>
                                        <span class="time">13 hours ago</span>
                                        <p>Exclusive: <span>Amazon Studios </span>has acquired Victoria Woodhull, with Oscar winning Room star <span>Brie Larson</span> polsed to produce, and play the first female candidate for the presidency of the United States. Amazon bought it in a pitch package deal. <span> Ben Kopit</span>, who wrote the Warner Bros film <span>Libertine</span> that has...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab33" class="tab">
                            <div class="row">
                                <div class="blog-item-style-1">
                                    <img src="images/uploads/blog-it1.jpg" alt="" width="170" height="250">
                                    <div class="blog-it-infor">
                                        <h3><a href="">Tab 3</a></h3>
                                        <span class="time">13 hours ago</span>
                                        <p>Exclusive: <span>Amazon Studios </span>has acquired Victoria Woodhull, with Oscar winning Room star <span>Brie Larson</span> polsed to produce, and play the first female candidate for the presidency of the United States. Amazon bought it in a pitch package deal. <span> Ben Kopit</span>, who wrote the Warner Bros film <span>Libertine</span> that has...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="morenew">
                    <div class="title-hd">
                        <h3>More news on Blockbuster</h3>
                        <a href="" class="viewall">See all Movies news<i class="ion-ios-arrow-right"></i></a>
                    </div>
                    <div class="more-items">
                        <div class="left">
                            <div class="more-it">
                                <h6><a href="">Michael Shannon Frontrunner to play Cable in “Deadpool 2”</a></h6>
                                <span class="time">13 hours ago</span>
                            </div>
                            <div class="more-it">
                                <h6><a href="">French cannibal horror “Raw” inspires L.A. theater to hand out “Barf Bags”</a></h6>

                                <span class="time">13 hours ago</span>
                            </div>
                        </div>
                        <div class="right">
                            <div class="more-it">
                                <h6><a href="">Laura Dern in talks to join Justin Kelly’s biopic “JT Leroy”</a></h6>
                                <span class="time">13 hours ago</span>
                            </div>
                            <div class="more-it">
                                <h6><a href="">China punishes more than 300 cinemas for box office cheating</a></h6>
                                <span class="time">13 hours ago</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="sidebar">
                    <div class="sb-facebook sb-it">
                        <h4 class="sb-title">Find us on Facebook</h4>
                        <iframe src="" data-src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fhaintheme%2F%3Ffref%3Dts&tabs=timeline&width=300&height=315px&small_header=true&adapt_container_width=false&hide_cover=false&show_facepile=true&appId" width="300" height="315" style="border:none;overflow:hidden" ></iframe>
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
</div>--%>
<!--end of latest new v1 section-->

<!-- footer section-->
<%@include file="footer.txt"%>
<!-- end of footer section-->


<%--<script>
    $(function () {
        $.ajax({
            url:"${pageContext.request.contextPath}/",
            type:"GET",
            success:function(result){
                console.log(result);
            }
        });
    })
</script>--%>
<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
</body>
</html>

