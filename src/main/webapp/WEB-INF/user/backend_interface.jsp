<%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/8/23
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-Hant-TW">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>後臺介面</title>
    <!-- Bootstrap CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
            crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/48f037bec9.js" crossorigin="anonymous"></script>
    <style>
        .tab_cor{
            background-color: #fff;
        }
        .icon-gps {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .son {
            position: relative;
            top: 250px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row align-items-center tab_cor">
        <div class="col-3"></div>
        <div class="col-3">
            <a href="addSelv" title="新增" target="_blank">
                <div class="icon-gps">
                    <div class="son">
                        <i class="fa-regular fa-square-plus fa-6x" ></i>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-3">
            <a href="backstageServlet" title="修改" target="_blank">
                <div class="icon-gps">
                    <div class="son">
                        <i class="fa-regular fa-folder-open fa-6x"></i>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-3"></div>
    </div>
</div>

<%--======================================================================================--%>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</html>
