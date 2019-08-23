<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/19
  Time: 8:58
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
                    <h1>celebrity listing - list</h1>
                    <ul class="breadcumb">
                        <li class="active"><a href="">Home</a></li>
                        <li> <span class="ion-ios-arrow-right"></span> celebrity listing</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- celebrity list section-->
<div class="page-single">
    <div class="container">
        <div class="row ipad-width2">
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="topbar-filter">
                    <p class="pad-change">Found <span>1,608 celebrities</span> in total</p>
                    <label>Sort by:</label>
                    <select>
                        <option value="popularity">Popularity Descending</option>
                        <option value="popularity">Popularity Ascending</option>
                        <option value="rating">Rating Descending</option>
                        <option value="rating">Rating Ascending</option>
                        <option value="date">Release date Descending</option>
                        <option value="date">Release date Ascending</option>
                    </select>
                    <a href="celebritylist.jsp" class="list"><i class="ion-ios-list-outline active"></i></a>
                    <a href="celebritygrid01.jsp" class="grid"><i class="ion-grid "></i></a>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="ceb-item-style-2">
                            <img src="images/uploads/ceblist1.jpg" alt="">
                            <div class="ceb-infor">
                                <h2><a href="celebritysingle.jsp">Dan Stevens</a></h2>
                                <span>actor, usa</span>
                                <p>Dan Stevens was born at Croydon in Surrey on 10th October 1982. His parents are teachers. He was educated at Tonbridge School and trained in acting at the National Youth Theatre of Great Britain... </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="ceb-item-style-2">
                            <img src="images/uploads/ceblist2.jpg" alt="">
                            <div class="ceb-infor">
                                <h2><a href="celebritysingle.jsp">Luke Evans</a></h2>
                                <span>actor, mexico</span>
                                <p>Luke George Evans was born in Pontypool, Wales, and grew up in Aberbargoed, in the south of Wales. He is the son of Yvonne (Lewis) and David Evans. He moved to Cardiff at the age 17...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="ceb-item-style-2">
                            <img src="images/uploads/ceblist3.jpg" alt="">
                            <div class="ceb-infor">
                                <h2><a href="celebritysingle.jsp">Scarlett Johansson</a></h2>
                                <span>actress, france</span>
                                <p>Scarlett Ingrid Johansson was born in New York City. Her mother, Melanie Sloan, is from a Jewish family from the Bronx, and her father, Karsten Johansson, is a Danish-born architect, from Copenhagen...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="ceb-item-style-2">
                            <img src="images/uploads/ceblist4.jpg" alt="">
                            <div class="ceb-infor">
                                <h2><a href="celebritysingle.jsp">Emma Watson</a></h2>
                                <span>actress, uk</span>
                                <p>Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="ceb-item-style-2">
                            <img src="images/uploads/ceblist5.jpg" alt="">
                            <div class="ceb-infor">
                                <h2><a href="celebritysingle.jsp">Tom Hardy</a></h2>
                                <span>actor, italy	</span>
                                <p>Joan Crawford was born Lucille Fay LeSueur on March 23, 1905, in San Antonio, Texas, to Anna Belle (Johnson) and Thomas E. LeSueur, a laundry laborer. By the time she was born her parents had separated....</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="ceb-item-style-2">
                            <img src="images/uploads/ceblist6.jpg" alt="">
                            <div class="ceb-infor">
                                <h2><a href="celebritysingle.jsp">Joan Crawford</a></h2>
                                <span>director, sweden</span>
                                <p>Joan Crawford was born Lucille Fay LeSueur on March 23, 1905, in San Antonio, Texas, to Anna Belle (Johnson) and Thomas E. LeSueur, a laundry laborer. By the time she was born her parents had separated....</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="ceb-item-style-2">
                            <img src="images/uploads/ceblist7.jpg" alt="">
                            <div class="ceb-infor">
                                <h2><a href="celebritysingle.jsp">Margot Robbie</a></h2>
                                <span>actress, chile</span>
                                <p>Margot Robbie is an Australian actress born in Dalby, Queensland, and raised on the Gold Coast, spending much of her time at the farm belonging to her grandparents. Her mother, Sarie Kessler, is a physiotherapist....</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="ceb-item-style-2">
                            <img src="images/uploads/ceblist8.jpg" alt="">
                            <div class="ceb-infor">
                                <h2><a href="celebritysingle.jsp">Jason Momoa</a></h2>
                                <span>actor, usa</span>
                                <p>Joseph Jason Namakaeha Momoa was born on August 1, 1979 in Honolulu, Hawaii. He is the son of Coni (Lemke), a photographer, and Joseph Momoa, a painter...</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="topbar-filter">
                    <label>Reviews per page:</label>
                    <select>
                        <option value="range">36 Reviews</option>
                        <option value="saab">18 Reviews</option>
                    </select>

                    <div class="pagination2">
                        <span>Page 1 of 6:</span>
                        <a class="active" href="">1</a>
                        <a href="">2</a>
                        <a href="">3</a>
                        <a href="">4</a>
                        <a href="">5</a>
                        <a href="">6</a>
                        <a href=""><i class="ion-arrow-right-b"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-xs-12 col-sm-12">
                <div class="sidebar">
                    <div class="searh-form">
                        <h4 class="sb-title">Search celebrity</h4>
                        <form class="form-style-1 celebrity-form" action="">
                            <div class="row">
                                <div class="col-md-12 form-it">
                                    <label>Celebrity name</label>
                                    <input type="text" placeholder="Enter keywords">
                                </div>
                                <div class="col-md-12 form-it">
                                    <label>Celebrity Letter</label>
                                    <select>
                                        <option value="range">A</option>
                                        <option value="saab">B</option>
                                    </select>
                                </div>
                                <div class="col-md-12 form-it">
                                    <label>Category</label>
                                    <select>
                                        <option value="range">Actress</option>
                                        <option value="saab">Others</option>
                                    </select>
                                </div>
                                <div class="col-md-12 form-it">
                                    <label>Year of birth</label>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <select>
                                                <option value="range">1970</option>
                                                <option value="number">Other</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <select>
                                                <option value="range">1990</option>
                                                <option value="number">others</option>
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
                    <div class="celebrities">
                        <h4 class="sb-title">featured celebrity</h4>
                        <div class="celeb-item">
                            <a href=""><img src="images/uploads/ava1.jpg" alt=""></a>
                            <div class="celeb-author">
                                <h6><a href="">Samuel N. Jack</a></h6>
                                <span>Actor</span>
                            </div>
                        </div>
                        <div class="celeb-item">
                            <a href=""><img src="images/uploads/ava2.jpg" alt=""></a>
                            <div class="celeb-author">
                                <h6><a href="">Benjamin Carroll</a></h6>
                                <span>Actor</span>
                            </div>
                        </div>
                        <div class="celeb-item">
                            <a href=""><img src="images/uploads/ava3.jpg" alt=""></a>
                            <div class="celeb-author">
                                <h6><a href="">Beverly Griffin</a></h6>
                                <span>Actor</span>
                            </div>
                        </div>
                        <div class="celeb-item">
                            <a href=""><img src="images/uploads/ava4.jpg" alt=""></a>
                            <div class="celeb-author">
                                <h6><a href="">Justin Weaver</a></h6>
                                <span>Actor</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end of celebrity list section-->

<!-- footer section-->
<%@include file="footer.txt"%>
<!-- end of footer section-->
<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
