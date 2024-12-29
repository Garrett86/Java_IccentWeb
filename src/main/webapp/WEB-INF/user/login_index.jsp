<%@ page import="tw.com.kai.web.webbread.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/7/30
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>松本村</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
    <%--<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet" />--%>
    <script src="https://kit.fontawesome.com/48f037bec9.js" crossorigin="anonymous"></script>
    <link href="static/css/base.css" rel="stylesheet"/>
    <link href="static/css/login_in.css" rel="stylesheet"/>
    <link href="static/css/about.css" rel="stylesheet"/>
    <link href="static/css/shop_1.css" rel="stylesheet"/>
    <link href="static/css/sale.css" rel="stylesheet"/>
    <link rel="icon" type="image/x-icon" href="favicon.ico"/>
</head>

<body>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 1) {
        for (Cookie cook : cookies) {
            System.out.print(cook.getName() + "::" + cook.getValue());
            System.out.print("<br>");
        }
    } else {
        Cookie cookie = new Cookie("name", "lccent");
        //0 不會儲存
        cookie.setMaxAge(60); //秒
        response.addCookie(cookie);
    }
%>
<div class="navbar-wrapper">
    <div class="container-md">
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #D9B3B3">
            <div class="container-fluid">
                <h1 class="site-title">
                    <a class="navbar-brand " href="indexServlet">
                        <img class="logo" src="https://i.ibb.co/CtdJ6T9/logo.gif"></img>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </h1>
                <div class="top-nav">
                    <ul class="func-menu list-inline">
                        <li><a href="">訂單查詢</a></li>
                        <%--                        <li><a href="">聯絡我們</a></li>--%>
                        <%--                        <li><a href="logServlet">會員登入</a></li>--%>
                        <li>
                            <%--會員登入--%>
                            <a href="sucServlet">
                                <span>k111</span>
                            </a>
                        </li>
                        <li id="#contact">
                            <%--購物車--%>
                            <a href="###">
                                <i id="icon" class="fa-solid fa-cart-shopping"></i>
                            </a>
                        </li>
                        <li>
                            <a href="indexServlet">
                                <i class="fa-solid fa-right-from-bracket"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="collapse navbar-collapse  " id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item nav-color">
                            <a class="nav-link active" aria-current="page" href="aboutServlet">品牌介紹</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">最新消息</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a href="loginServlet" class="nav-link dropdown-toggle nbtm" id="navbarDropdown"
                               role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                線上購物
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="breadServlet">蛋糕系列</a></li>
                                <li>
                                    <hr class="dropdown-divider"/>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="breadSvl">人氣香酥系列</a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider"/>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="breadSvle">冷藏專區</a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider"/>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="comSlv">常見問題</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="saleSlv">銷售通路</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
                        <button class="btn btn-outline-success" type="submit">
                            Search
                        </button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- ====================================================== -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active item">
            <img class="first-slide img_size"
                 src="https://i.ibb.co/Br0qf6L/6b43b629-e1ea-40e9-84c4-07da7fe62393-1722242715-p0tm0h0kwv-m-1920x780.webp"
                 alt="first-slide"/>
        </div>
        <div class="carousel-item item">
            <img class="second-slide img_size" src="https://i.ibb.co/rd9BnFr/banner0001.jpg" alt="second-slide"/>
        </div>
        <div class="carousel-item item">
            <img class="third-slide img_size" src="https://i.ibb.co/kJddkhM/2024-BN.jpg" alt="third-slide"/>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<!-- ============================================================================ -->
<div class="container marketing">
    <h1 class="nam1">熱門排名</h1>
    <div class="row">
        <div class="col-lg-3"><img class="img-circle"
                                   src="https://shoplineimg.com/58c16c6059d524d964001e26/6409c7817bfda30014d585e7/800x.jpg?"
                                   alt="" width="140" height="140">
            <h2>芒果蛋糕</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies
                vehicula ut id
                elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-3"><img class="img-circle" src="https://www.bzx.tw/upload-files/product/001/001009.jpg"
                                   alt="" width="140" height="140">
            <h2>日式年輪蛋糕</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies
                vehicula ut id
                elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-3"><img class="img-circle"
                                   src="https://www.starbucks.com.tw/common/objects/images/cake/20190614183845497.jpg"
                                   alt="" width="140" height="140">
            <h2>堅果塔</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies
                vehicula ut id
                elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-3"><img class="img-circle"
                                   src="https://photo.yannick.com.tw/photo/20200815/%E6%89%8B%E5%B7%A5%E6%B3%A1%E8%8A%99-%E5%8E%9F%E5%91%B3.jpg"
                                   alt="" width="140" height="140">
            <h2>泡芙</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies
                vehicula ut id
                elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
    </div>
    <hr class="featurette-divider">
    <!-- ================================================================================ -->
    <div class="container">
        <div class="row clearfix">
            <div class="col-6">
                <div class="about-sect wow fadeInUp" data-wow-delay="0.1s">
                    <h2 class="sect-title">關於我們</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates corrupti recusandae fugit
                        nisi
                        tempore id alias ab facilis. Ipsum molestiae fugit exercitationem id sed. Officia nulla sequi
                        hic
                        perferendis odit.
                        Rerum accusantium, ut ab fugiat alias autem ea laudantium doloremque dicta distinctio deserunt
                        dolorum sit
                        nemo laborum praesentium iste eos facilis quo facere at. Dolorem facere sequi quisquam sint
                        perspiciatis.
                        Velit unde omnis, aut asperiores assumenda laborum fugit aliquid reiciendis. Magnam similique
                        autem
                        quibusdam iste placeat quaerat quasi et. Voluptas quaerat itaque repellat quibusdam maiores
                        libero
                        cupiditate perferendis, iure facilis?</p>
                </div>
            </div>
            <div class="col-6">
                <div class="news-sect wow fadeInUp" data-wow-delay="0.3s">
                    <h2 class="sect-title">最新消息</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor accusantium qui et laboriosam ab
                        ipsam
                        est, eum delectus laudantium eaque quidem distinctio blanditiis quisquam ducimus excepturi nemo
                        magni
                        aspernatur animi.
                        Ipsum, fugit? Quae animi dignissimos maxime laboriosam explicabo quod dolorem quia dolores
                        officia quidem
                        quas rerum, saepe nulla totam. Architecto suscipit vero dolorem aliquam non expedita fugiat
                        dolorum vitae?
                        A.
                        Placeat quos quis asperiores! Voluptates incidunt necessitatibus provident, modi eveniet
                        blanditiis, culpa
                        quam, voluptatum impedit eligendi quasi quidem repudiandae fugiat sit at numquam? Voluptatem
                        beatae totam
                        eaque nihil dolorem! Maiores?</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- FOOTER -->
<footer class="footer">
    <div class="footer-top">
        <p> Copyright 松本村 &copy;2024, Inc. &middot;
            <a href="#">Privacy</a> &middot;
            <a href="#">Terms</a>
        </p>
        </p>
        <p class="pull-right"><a href="#">Back to top</a></p>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous">
</script>

</body>
</html>