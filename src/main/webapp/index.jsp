<%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/7/23
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<main>
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
            <img class="first-slide img_size" src="https://i.ibb.co/Br0qf6L/6b43b629-e1ea-40e9-84c4-07da7fe62393-1722242715-p0tm0h0kwv-m-1920x780.webp" alt="first-slide" />
        </div>
        <div class="carousel-item item">
            <img class="second-slide img_size" src="https://i.ibb.co/rd9BnFr/banner0001.jpg" alt="second-slide" />
        </div>
        <div class="carousel-item item">
            <img class="third-slide img_size" src="https://i.ibb.co/kJddkhM/2024-BN.jpg" alt="third-slide" />
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
        <div class="col-lg-3"><img class="img-circle" src="https://shoplineimg.com/58c16c6059d524d964001e26/6409c7817bfda30014d585e7/800x.jpg?" alt="" width="140" height="140">
            <h2>芒果蛋糕</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies
                vehicula ut id
                elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-3"><img class="img-circle" src="https://www.bzx.tw/upload-files/product/001/001009.jpg" alt="" width="140" height="140">
            <h2>日式年輪蛋糕</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies
                vehicula ut id
                elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-3"><img class="img-circle" src="https://www.starbucks.com.tw/common/objects/images/cake/20190614183845497.jpg" alt="" width="140" height="140">
            <h2>堅果塔</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies
                vehicula ut id
                elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-3"><img class="img-circle" src="https://photo.yannick.com.tw/photo/20200815/%E6%89%8B%E5%B7%A5%E6%B3%A1%E8%8A%99-%E5%8E%9F%E5%91%B3.jpg" alt="" width="140" height="140">
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
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates corrupti recusandae fugit nisi
                        tempore id alias ab facilis. Ipsum molestiae fugit exercitationem id sed. Officia nulla sequi hic
                        perferendis odit.
                        Rerum accusantium, ut ab fugiat alias autem ea laudantium doloremque dicta distinctio deserunt dolorum sit
                        nemo laborum praesentium iste eos facilis quo facere at. Dolorem facere sequi quisquam sint perspiciatis.
                        Velit unde omnis, aut asperiores assumenda laborum fugit aliquid reiciendis. Magnam similique autem
                        quibusdam iste placeat quaerat quasi et. Voluptas quaerat itaque repellat quibusdam maiores libero
                        cupiditate perferendis, iure facilis?</p>
                </div>
            </div>
            <div class="col-6">
                <div class="news-sect wow fadeInUp" data-wow-delay="0.3s">
                    <h2 class="sect-title">最新消息</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor accusantium qui et laboriosam ab ipsam
                        est, eum delectus laudantium eaque quidem distinctio blanditiis quisquam ducimus excepturi nemo magni
                        aspernatur animi.
                        Ipsum, fugit? Quae animi dignissimos maxime laboriosam explicabo quod dolorem quia dolores officia quidem
                        quas rerum, saepe nulla totam. Architecto suscipit vero dolorem aliquam non expedita fugiat dolorum vitae?
                        A.
                        Placeat quos quis asperiores! Voluptates incidunt necessitatibus provident, modi eveniet blanditiis, culpa
                        quam, voluptatum impedit eligendi quasi quidem repudiandae fugiat sit at numquam? Voluptatem beatae totam
                        eaque nihil dolorem! Maiores?</p>
                </div>
            </div>
        </div>
    </div>
</div>
</main>
<%@include file="footer.jsp"%>