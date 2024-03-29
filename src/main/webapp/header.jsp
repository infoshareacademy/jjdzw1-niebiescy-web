<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="login" scope="session" value="${login}"/>
<c:set var="loggedUser" scope="session" value="${id}"/>
<c:set var="loggedUserType" scope="session" value="${userType}"/>

<!DOCTYPE html>
<html lang="en">

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Site Metas -->
<title>Event Finder</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Design fonts -->
<link href="https://fonts.googleapis.com/css?family=Ubuntu:300,400,400i,500,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- FontAwesome Icons core CSS -->
<link href="css/font-awesome.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="style.css" rel="stylesheet">

<!-- Responsive styles for this template -->
<link href="css/responsive.css" rel="stylesheet">

<!-- Colors for this template -->
<link href="css/colors.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>


<!-- LOADER -->
<div id="preloader">
    <img class="preloader" src="images/loader.gif" alt="">
</div><!-- end loader -->
<!-- END LOADER -->

<div id="wrapper">
    <div class="collapse top-search" id="collapseExample">
        <div class="card card-block">
            <div class="newsletter-widget text-center">
                <form class="form-inline" method="get" action="/Search">
                    <input type="text" class="form-control" name="stringForSearch" placeholder="Wpisz, czego szuksz...">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                </form>
            </div><!-- end newsletter -->
        </div>
    </div><!-- end top-search -->

    <div class="topbar-section">
        <div class="container-fluid">
            <div class="row">


                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="topsearch text-right">
                        <a data-toggle="collapse" href="#collapseExample" aria-expanded="false"
                           aria-controls="collapseExample"><i class="fa fa-search"></i> Szukaj</a>
                    </div><!-- end search -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end header-logo -->
    </div><!-- end topbar -->

    <div class="header-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo.png" alt=""></a>
                    </div><!-- end logo -->
                </div>
            </div><!-- end row -->
        </div><!-- end header-logo -->
    </div><!-- end header -->

    <header class="header">
        <div class="container">
            <nav class="navbar navbar-inverse navbar-toggleable-md">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#cloapediamenu"
                        aria-controls="cloapediamenu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-md-center" id="cloapediamenu">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link color-pink-hover" href="/ListAllEventsMainPageServlet">Start</a>
                        </li>
                        <li class="nav-item dropdown has-submenu menu-large hidden-md-down hidden-sm-down hidden-xs-down">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">Kategorie</a>
                            <ul class="dropdown-menu megamenu" aria-labelledby="dropdown01">
                                <li>
                                    <div class="mega-menu-content clearfix">
                                        <div class="tab">
                                            <button class="tablinks active" onclick="openCategory(event, 'cat01')">
                                                Beauty1
                                            </button>
                                            <button class="tablinks" onclick="openCategory(event, 'cat02')">Fashion
                                            </button>
                                            <button class="tablinks" onclick="openCategory(event, 'cat03')">Travel
                                            </button>
                                            <button class="tablinks" onclick="openCategory(event, 'cat04')">
                                                Architecture
                                            </button>
                                            <button class="tablinks" onclick="openCategory(event, 'cat05')">Recipes
                                            </button>
                                            <button class="tablinks" onclick="openCategory(event, 'cat05')">GG
                                            </button>
                                            <!--FIXME-->
                                            <c:forEach items="${listOfCategories}" var="categoriesLoop">
                                                <button class="tablinks"
                                                        onclick="openCategory(event, 'cat05')">${categoriesLoop.get(0).getName().toString()}
                                                </button>
                                            </c:forEach>
                                        </div>

                                        <div class="tab-details clearfix">
                                            <div id="cat01" class="tabcontent active">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_01.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Spa</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">Top 10+ care advice
                                                                    for your toenails</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_02.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Beauty</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">The secret of your
                                                                    beauty is handmade soap</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_03.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Beauty</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">Benefits of face mask
                                                                    made from mud</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_04.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Spa</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">Relax with the unique
                                                                    warmth of candle flavor</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>
                                                </div><!-- end row -->
                                            </div>
                                            <div id="cat02" class="tabcontent">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_05.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Fashion</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">2017 summer stamp
                                                                    will have design models here</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_06.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Collections</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">Which color is the
                                                                    most suitable color for you?</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_07.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Fashion</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">Subscribe to these
                                                                    sites to keep an eye on the fashion</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_01.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Trends</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">The most trends of
                                                                    this year with color combination</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>
                                                </div><!-- end row -->
                                            </div>
                                            <div id="cat03" class="tabcontent">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_09.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Tourism</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">I visited the
                                                                    architects of Istanbul for you</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_11.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Travel</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">Prepared handmade
                                                                    dish dish in the Netherlands</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_12.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">City Tours</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">I recommend you visit
                                                                    the fairy chimneys</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_13.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Tourism</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">One of the most
                                                                    beautiful ports in the world</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>
                                                </div><!-- end row -->
                                            </div>
                                            <div id="cat04" class="tabcontent">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_14.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Places</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">A collection of the
                                                                    most beautiful shop designs</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_15.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Designs</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">America's and
                                                                    Canada's most beautiful wine houses</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_16.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Minimalism</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">The most professional
                                                                    ways to color your walls</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_17.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Furnishings</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">Stylish cabinet
                                                                    designs and furnitures</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>
                                                </div><!-- end row -->
                                            </div>
                                            <div id="cat05" class="tabcontent">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_18.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Vegetables</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">Grilled vegetable
                                                                    with fish prepared with fish</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_19.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Restaurants</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">The world's finest
                                                                    and clean meat restaurants</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_20.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Meat foods</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">Fried veal and
                                                                    vegetable dish</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="single.html" title="">
                                                                    <img src="upload/menu_21.jpg" alt=""
                                                                         class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Pastas</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="single.html" title="">Tasty pasta sauces
                                                                    and recipes</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>
                                                </div><!-- end row -->
                                            </div>
                                        </div><!-- end tab-details -->
                                    </div><!-- end mega-menu-content -->
                                </li>
                            </ul>
                        </li>


                        <c:if test="${(not empty login) and (loggedUserType == 'ADMIN')}">

                            <li class="nav-item dropdown has-submenu">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Administracja</a>
                                <ul class="dropdown-menu" aria-labelledby="dropdown02">
                                    <li><a class="dropdown-item" href="/addevent">Dodaj event</a></li>
                                    <li><a class="dropdown-item" href="ListAllUsersAdminServlet">Użytkownicy</a></li>
                                    <li><a class="dropdown-item" href="ListAllEventsAdminServlet">Eventy</a></li>
                                </ul>
                            </li>

                        </c:if>

                        <c:if test="${(not empty login) and (loggedUserType == 'BUSINESS')}">

                            <li class="nav-item dropdown has-submenu">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Administracja</a>
                                <ul class="dropdown-menu" aria-labelledby="dropdown02">
                                    <li><a class="dropdown-item" href="/addevent">Dodaj event</a></li>
                                    <li><a class="dropdown-item" href="ListAllEventsAdminServlet">Eventy</a></li>
                                </ul>
                            </li>

                        </c:if>

                        <li class="nav-item">
                            <a class="nav-link color-grey-hover" href="/Contact">Kontakt</a>
                        </li>


                        <li class="nav-item">


                            <c:if test="${empty login}"><a class="nav-link color-grey-hover" href="user.jsp">Zaloguj
                                się/Dodaj konto</a></c:if>
                            <c:if test="${not empty login}"><a class="nav-link color-grey-hover"
                                                               href="/UserDetails?id=${loggedUser}">Witaj: ${login}
                                (moje
                                konto)</a></c:if>

                            <!-- <a class="nav-link color-grey-hover" href="/UserAdd">Moje konto</a>-->
                        </li>

                        <c:if test="${not empty login}">
                            <li class="nav-item">
                                <a class="nav-link color-grey-hover" href="/LogoutServlet">Wyloguj się</a>
                            </li>
                        </c:if>

                    </ul>
                </div>
            </nav>
        </div><!-- end container -->
    </header><!-- end header -->