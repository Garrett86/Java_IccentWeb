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
    <title>Title</title>
    <style>
        input{
            width: 100px;
        }
    </style>
</head>
<body>
<form action="productServlet" method="post">
    <input type="text" name="image" size="60"><br>
    <input type="text" name="title"><br>
    <input type="text" name="price"><br>
    <input type="text" name="saleCount"><br>
    <input type="text" name="breadCount"><br>
    <input type="submit" value="add">
    <input type="hidden" name="status" value="addProduct">


</form>
</body>
</html>
