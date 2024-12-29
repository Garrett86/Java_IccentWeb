<%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/8/27
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/header.jsp" %>
<style>
    .sale_blank{
        height: 2px;
        line-height: 2px;
    }
</style>
<main>
<div class="main-top">
    <div class="main-txt">銷售通路</div>
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
            <a href="saleSlv">
                <span itemprop="name">銷售通路</span>
            </a>
            <meta itemprop="position" content="2">
        </li>
    </ol>
</div>
<div class="container">
    <div class="row sales"></div>
    <script type="text/javascript" src="static/js/sale.js"></script>
</div>
<div class="container">
    <div class="sale_blank">
    </div>
</div>
</main>
<%@include file="/footer.jsp" %>