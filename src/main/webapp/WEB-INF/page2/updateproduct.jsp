<%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/8/21
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="zh-Hant-TW">
<head>
    <meta charset="UTF-8">
    <title>更新資料</title>
    <!-- Bootstrap CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
            crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>更新</h1><br>
    <h3><%=request.getParameter("id")%>
    </h3>
    <br>
    <h3><%=request.getParameter("breadImg")%>
    </h3><br>
    <h3><%=request.getParameter("breadName")%>
    </h3><br>
    <h3><%=request.getParameter("price")%>
    </h3><br>
    <h3><%=request.getParameter("saleCount")%>
    </h3><br>
    <h3><%=request.getParameter("breadCount")%>
    </h3><br>
</div>

<div class="container">
    <form action="productServlet" method="post" class="align-items-center" accept-charset="UTF-8">
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label">編號:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="id"
                value="<%=request.getParameter("id") != null ? request.getParameter("id"):""%>">
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label">圖片:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="image">
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label">標題:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="title">
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label">價格:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="price">
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label">銷售數量:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="saleCount">
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label">銷售庫存:</label>
            <div class="col-sm-6">
                <input class="form-control" type="text" name="breadCount">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col"></div>
            <div class="col"><input type="submit" value="更新"></div>
            <div class="col"></div>
        </div>
        <input type="hidden" name="status" value="updateProduct">
    </form>
</div>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</html>
