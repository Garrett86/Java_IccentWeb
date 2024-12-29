<%@ page import="java.util.ArrayList" %>
<%@ page import="tw.com.kai.web.webbread.pojo.Bread" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/8/21
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="zh-Hant-TW">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>後臺管理</title>
    <style>
        table {
            border-collapse: collapse;
            border: 2px solid rgb(140 140 140);
            font-family: sans-serif;
            font-size: 14px;
            /*letter-spacing: 1px;*/
        }
    </style>
</head>
<body>
<form action="productServlet" method="post"  accept-charset="UTF-8">
    關鍵字:<input type="text" name="title">
    <input type="submit" value="送出">
    <input type="hidden" name="status" value="findProduct">
</form>
<%
    ArrayList<Bread> breads = (ArrayList)request.getAttribute("list");
    PrintWriter outs=response.getWriter();
    if (breads != null) {
        outs.print(breads.size());
    }else if(breads == null){
        breads=new ArrayList<>();
    }
%>
<table>
    <tr>
        <th>編號</th>
        <th>圖片</th>
        <th>標題</th>
        <th>金額</th>
        <th>銷量</th>
        <th>庫存</th>
        <th>操作</th>
    </tr>
    <%
//        ArrayList<Bread> bread = (ArrayList)request.getAttribute("list");
        for (int i =0; i < breads.size();i++) {
    %>
    <tr>
        <td>&nbsp;<%=breads.get(i).getId()%>&nbsp;</td>
        <td><%=breads.get(i).getBreadImg()%></td>
        <td><%=breads.get(i).getBreadName()%>&nbsp;</td>
        <td><%=breads.get(i).getPrice()%>&nbsp;</td>
        <td><%=breads.get(i).getSaleCount()%>&nbsp;</td>
        <td><%=breads.get(i).getBreadCount()%>&nbsp;</td>
        <td><a href="updateSlv?id=<%=breads.get(i).getId()%>&breadImg=<%=breads.get(i).getBreadImg()%>&breadName=<%=breads.get(i).getBreadName()%>&price=<%=breads.get(i).getPrice()%>&saleCount=<%=breads.get(i).getSaleCount()%>&breadCount=<%=breads.get(i).getBreadCount()%>">更新</a>
            |<a href="productServlet?id=<%=breads.get(i).getId()%>&status=deleteProduct"> 刪除</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
