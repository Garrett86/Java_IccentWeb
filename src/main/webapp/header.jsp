<%--
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
      integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
<%--<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet" />--%>
<script src="https://kit.fontawesome.com/48f037bec9.js" crossorigin="anonymous"></script>
<link href="static/css/base.css" rel="stylesheet" />
<link href="static/css/login_in.css" rel="stylesheet" />
<link href="static/css/about.css" rel="stylesheet" />
<link href="static/css/shop_1.css" rel="stylesheet" />
<link href="static/css/sale.css" rel="stylesheet" />
<link rel="icon" type="image/x-icon" href="favicon.ico" />

</head>

<body>
    <%	
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length >1){
			for(Cookie cook : cookies){
				System.out.print(cook.getName()+"::"+cook.getValue());
				System.out.print("<br>");
			}
		}else{
			Cookie cookie = new Cookie("name","lccent");
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
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
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
                            <a href="logServlet">
                            <i class="fa-regular fa-user fa-lg"></i>
                        </a>
                        </li>
                        <li id="#contact">
                            <%--購物車--%>
                            <a href="cart.jsp">
                                <i class="fa-solid fa-cart-shopping"></i>
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
                            <a href="loginServlet" class="nav-link dropdown-toggle nbtm"  id="navbarDropdown" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                線上購物
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="breadServlet">蛋糕系列</a></li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li>
                                    <a class="dropdown-item" href="breadSvl">人氣香酥系列</a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li>
                                    <a class="dropdown-item" href="breadSvle">冷藏專區</a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider" />
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
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
                        <button class="btn btn-outline-success" type="submit">
                            Search
                        </button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
</div>