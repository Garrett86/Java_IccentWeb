<%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/7/30
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/header.jsp" %>
<style>

    a {
        text-decoration: none
    }

    a:hover {
        text-decoration: none
    }

    .colored-first-letter {
        text-align: center;
    }

    .colored-first-letter::first-letter {

        color: red;
    }

    /* .borderBox {
        border-bottom: 2px #7B7B7B dashed;
        border-width: medium;
    } */

    .com_blank {
        height: 30px;
        line-height: 30px;
    }

    .bdage {
        display: inline-block;
        background-color: #e91e63;
        /* 背景顏色 */
        color: white;
        /* 字體顏色 */
        width: 50px;
        height: 50px;
        line-height: 50px;
        /* 文字垂直居中 */
        text-align: center;
        /* 文字水平居中 */
        border-radius: 15px;
        /* 圓角，調整為四周有不同弧度的角 */
        font-size: 24px;
        /* 字體大小 */
        font-family: Arial, sans-serif;
        /* 字體 */
        margin-right: 20px;
        /* 圖示與文字之間的間距 */
    }

    /* .twt {
        position: relative;
        top: -35px;
        left: 80px;
    } */

    .twt {
        font-size: 20px;
        color: #333;
        font-family: Arial, sans-serif;
    }

    .twt_a>a:hover {
        color: #FF5151;
    }

    .com_blank2 {
        height: 92.5px;
    }
</style>
<main>
<div class="main-top">
    <div class="main-txt">常見問題</div>
</div>
<div class="container">
    <ol class="breadcrumb list-in" itemtype="https://schema.org/BreadcrumbList">
        <li itemprop="itemListElement">
            <a href="indexServlet">
                <span itemprop="name">首頁</span>
            </a>
            <meta itemprop="position" content="1">
        </li>
        <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
            <a href="comSlv">
                <span itemprop="name">常見問題</span>
            </a>
            <meta itemprop="position" content="2">
        </li>
    </ol>
</div>
<div class="container">
    <h2 class="colored-first-letter">常見問題</h2>
</div>

<div class="container">
    <div class="com_blank"></div>
</div>

<div class="container ">
    <div class="row">
        <div class="col-sm"></div>
        <div class="col-sm  twt_a">
            <div class="bdage">1</div>
            <a href="" class="twt">購物說明</a>
            <hr>
        </div>
        <div class="col-sm"></div>
        <div class="col-sm twt_a">
            <div class="bdage">2</div>
            <a href="" class="twt">購物說明</a>
            <hr>
        </div>
        <div class="col-sm"></div>
    </div>
</div>

<div class="container">
    <div class="com_blank2">
    </div>
</div>
</main>
<%@include file="/footer.jsp" %>

