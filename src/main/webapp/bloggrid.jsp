<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/19
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div class="login-wrapper" id="login-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>登录</h3>
        <form method="post" action="login.php">
            <div class="row">
                <label for="username">
                    用户:
                    <input type="text" name="username" id="username" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                </label>
            </div>

            <div class="row">
                <label for="password">
                    密码:
                    <input type="password" name="password" id="password" placeholder="******" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
            <div class="row">
                <div class="remember">
                    <div>
                        <input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>
                    </div>
                    <a href="#">Forget password ?</a>
                </div>
            </div>
            <div class="row">
                <button type="submit">登录</button>
            </div>
        </form>
        <!--<div class="row">
            <p>Or via social</p>
            <div class="social-btn-2">
                <a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>
                <a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
            </div>
        </div>-->
    </div>
</div>
<!--end of login form popup-->
<!--signup form popup-->
<div class="login-wrapper"  id="signup-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>sign up</h3>
        <form method="post" action="signup.php">
            <div class="row">
                <label for="username-2">
                    Username:
                    <input type="text" name="username" id="username-2" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                </label>
            </div>

            <div class="row">
                <label for="email-2">
                    your email:
                    <input type="password" name="email" id="email-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
            <div class="row">
                <label for="password-2">
                    Password:
                    <input type="password" name="password" id="password-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
            <div class="row">
                <label for="repassword-2">
                    re-type Password:
                    <input type="password" name="password" id="repassword-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
            <div class="row">
                <button type="submit">sign up</button>
            </div>
        </form>
    </div>
</div>
<!--end of signup form popup-->

<!-- BEGIN | Header -->
<header class="ht-header">
    <div class="container">
        <nav class="navbar navbar-default navbar-custom">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header logo">
                <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <div id="nav-icon1">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
                <a href="index.jsp"><img class="logo" src="images/logo1.png" alt="" width="119" height="58"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav flex-child-menu menu-left">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown">
                            Home <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="index.jsp">Home 01</a></li>
                            <li><a href="homev2.jsp">Home 02</a></li>
                            <li><a href="homev3.jsp">Home 03</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            movies<i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Movie grid<i class="ion-ios-arrow-forward"></i></a>
                                <ul class="dropdown-menu level2">
                                    <li><a href="moviegrid.jsp">Movie grid</a></li>
                                    <li><a href="moviegridfw.jsp">movie grid full width</a></li>
                                </ul>
                            </li>
                            <li><a href="movielist.jsp">Movie list</a></li>
                            <li><a href="moviesingle.jsp">Movie single</a></li>
                            <li class="it-last"><a href="seriessingle.jsp">Series single</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            celebrities <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="celebritygrid01.jsp">celebrity grid 01</a></li>
                            <li><a href="celebritygrid02.jsp">celebrity grid 02 </a></li>
                            <li><a href="celebritylist.jsp">celebrity list</a></li>
                            <li class="it-last"><a href="celebritysingle.jsp">celebrity single</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            news <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="bloglist.jsp">blog List</a></li>
                            <li><a href="bloggrid.jsp">blog Grid</a></li>
                            <li class="it-last"><a href="blogdetail.jsp">blog Detail</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            community <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="userfavoritegrid.jsp">user favorite grid</a></li>
                            <li><a href="userfavoritelist.jsp">user favorite list</a></li>
                            <li><a href="userprofile.jsp">user profile</a></li>
                            <li class="it-last"><a href="userrate.jsp">user rate</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav flex-child-menu menu-right">
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            pages <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="landing.jsp">Landing</a></li>
                            <li><a href="404.jsp">404 Page</a></li>
                            <li class="it-last"><a href="comingsoon.jsp">Coming soon</a></li>
                        </ul>
                    </li>
                    <li><a href="#">帮助</a></li>
                    <li class="loginLink"><a href="#">登录</a></li>
                    <li class="btn signupLink"><a href="#">注册</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <!-- top search form -->
        <div class="top-search">
            <select>
                <option value="united">TV show</option>
                <option value="saab">Others</option>
            </select>
            <input type="text" placeholder="Search for a movie, TV Show or celebrity that you are looking for">
        </div>
    </div>
</header>
<!-- END | Header -->

<div class="hero common-hero">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="hero-ct">
                    <h1> blog listing - grid</h1>
                    <ul class="breadcumb">
                        <li class="active"><a href="#">Home</a></li>
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
                    <li class="icon-prev"><a href="#"><i class="ion-ios-arrow-left"></i></a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">...</a></li>
                    <li><a href="#">21</a></li>
                    <li><a href="#">22</a></li>
                    <li class="icon-next"><a href="#"><i class="ion-ios-arrow-right"></i></a></li>
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
                            <li><a href="#">Awards (50)</a></li>
                            <li><a href="#">Box office (38)</a></li>
                            <li><a href="#">Film reviews (72)</a></li>
                            <li><a href="#">News (45)</a></li>
                            <li><a href="#">Global (06)</a></li>
                        </ul>
                    </div>
                    <div class="sb-recentpost sb-it">
                        <h4 class="sb-title">most popular</h4>
                        <div class="recent-item">
                            <span>01</span><h6><a href="#">Korea Box Office: Beauty and the Beast Wins Fourth</a></h6>
                        </div>
                        <div class="recent-item">
                            <span>02</span><h6><a href="#">Homeland Finale Includes Shocking Death </a></h6>
                        </div>
                        <div class="recent-item">
                            <span>03</span><h6><a href="#">Fate of the Furious Reviews What the Critics Saying</a></h6>
                        </div>
                    </div>
                    <div class="sb-tags sb-it">
                        <h4 class="sb-title">tags</h4>
                        <ul class="tag-items">
                            <li><a href="#">Batman</a></li>
                            <li><a href="#">film</a></li>
                            <li><a href="#">homeland</a></li>
                            <li><a href="#">Fast & Furious</a></li>
                            <li><a href="#">Dead Walker</a></li>
                            <li><a href="#">King</a></li>
                            <li><a href="#">Beauty</a></li>
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
<footer class="ht-footer">
    <div class="container">
        <div class="flex-parent-ft">
            <div class="flex-child-ft item1">
                <a href="index.jsp"><img class="logo" src="images/logo1.png" alt=""></a>
                <p>5th Avenue st, manhattan<br>
                    New York, NY 10001</p>
                <p>Call us: <a href="#">(+01) 202 342 6789</a></p>
            </div>
            <div class="flex-child-ft item2">
                <h4>Resources</h4>
                <ul>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Blockbuster</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Forums</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Help Center</a></li>
                </ul>
            </div>
            <div class="flex-child-ft item3">
                <h4>Legal</h4>
                <ul>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Security</a></li>
                </ul>
            </div>
            <div class="flex-child-ft item4">
                <h4>Account</h4>
                <ul>
                    <li><a href="#">My Account</a></li>
                    <li><a href="#">Watchlist</a></li>
                    <li><a href="#">Collections</a></li>
                    <li><a href="#">User Guide</a></li>
                </ul>
            </div>
            <div class="flex-child-ft item5">
                <h4>Newsletter</h4>
                <p>Subscribe to our newsletter system now <br> to get latest news from us.</p>
                <form action="#">
                    <input type="text" placeholder="Enter your email...">
                </form>
                <a href="#" class="btn">Subscribe now <i class="ion-ios-arrow-forward"></i></a>
            </div>
        </div>
    </div>
    <div class="ft-copyright">
        <div class="ft-left">
            <p>© 2017 Blockbuster. All Rights <a href="http://www.bootstrapmb.com/" title="bootstrapmb">Reserved</a>. Designed by leehari.</p>
        </div>
        <div class="backtotop">
            <p><a href="#" id="back-to-top">Back to top  <i class="ion-ios-arrow-thin-up"></i></a></p>
        </div>
    </div>
</footer>
<!-- end of footer section-->

<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
