<%@ page import="java.util.ArrayList" %>
<%@ page import="tw.com.kai.web.webbread.pojo.Bread1" %><%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/8/4
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/header.jsp" %>
<main>
<%
    ArrayList<Bread1> breads = (ArrayList) request.getAttribute("breadsproduct2");
%>
<div class="container-md main-title">人氣香酥系列</div>
<div class="container-md">
    <ol class="bread-it list-it" itemscope itemprop="https://schema.org/BreadcrumbList">
        <li itemprop="item-List" itemscope itemtype="https://schema.org/ListItem">
            <a href="indexServlet">
                <span>首頁</span>
            </a>
            <meta itemprop="position" content="1">
        </li>
        <li itemprop="item-List" itemscope itemtype="https://schema.org/ListItem">
            <a href="breadSvl">
                <span>人氣香酥系列</span>
            </a>
            <meta itemprop="position" content="2">
        </li>
    </ol>
</div>
<div class="container-md">
    <div class="row">
        <%
            for (int i = 0; i < breads.size(); i++) {
                if (breads != null) {
        %>
        <div class="col col-lg-3">
            <li class="item">
                <div class="box">
                    <div class="pic-box">
                        <a href="##">
                            <img class="img-sh"
                                 src="<%=breads.get(i).getBreadImg()%>"
                                 alt=""></a>
                    </div>
                    <div class="txt">
                        <div class="nam"><%=breads.get(i).getBreadName()%></div>
                        <div class="desc"></div>
                        <div class="offers">NT$<%=breads.get(i).getPrice()%></div>
                        <a href="###"></a>
                    </div>
                    <div class="btn-group">
                        <a href="###" class="btn-g ws" role="button">
                            加入追蹤
                        </a>
                        <a href="###" class="btn-g det" role="button">
                            詳細介紹
                        </a>
                    </div>
                </div>
            </li>
        </div>
        <%
                }
            }
        %>
    </div>
</div>
</main>
<%@include file="/footer.jsp" %>