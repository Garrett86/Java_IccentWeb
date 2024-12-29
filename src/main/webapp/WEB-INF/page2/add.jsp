<%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/8/21
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-Hant-TW">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新增資料</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
            crossorigin="anonymous">
    <style>
        body {
            background-color: #E0E0E0;
        }

        .add_table {
            position: relative;
            top: 150px;
        }

        .tab_av {
            width: 400px;
            border-color: #009393;
            border-style: double;
            background-color: #fff;
        }

        .tab_a {
            position: relative;
            top: 10px;
        }

        .in_add {
            position: relative;
            left: 50px;
        }
    </style>
</head>
<body>
<div class="container add_table d-flex justify-content-center">
    <div class=" tab_av">
        <div class="tab_a">
            <form action="productServlet" method="post">
                <div class="row mb-3 in_add">
                    <label class="col-sm-3 col-form-label">圖片</label>
                    <div class="col-2">
                        <input type="text" name="image">
                    </div>
                </div>
                <div class="row mb-3 in_add">
                    <label class="col-sm-3 col-form-label">標題</label>
                    <div class="col-2">
                        <input type="text" name="title">
                    </div>
                </div>
                <div class="row mb-3 in_add">
                    <label class="col-sm-3 col-form-label">價格</label>
                    <div class="col-2">
                        <input type="text" name="price">
                    </div>
                </div>
                <div class="row mb-3 in_add">
                    <label class="col-sm-3 col-form-label">銷售數量</label>
                    <div class="col-2">
                        <input type="text" name="saleCount">
                    </div>
                </div>
                <div class="row mb-3 in_add">
                    <label class="col-sm-3 col-form-label">庫存數量</label>
                    <div class="col-2">
                        <input type="text" name="breadCount">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col"></div>
                    <div class="col d-flex justify-content-center">
                        <input type="submit" value="add">
                    </div>
                    <div class="col"></div>
                </div>
                <input type="hidden" name="status" value="addProduct">
            </form>
        </div>
    </div>
</div>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>

<script>
    function showAlert(){
        alert("新增成功!!");
        return true;
    }
</script>
</body>
</html>
