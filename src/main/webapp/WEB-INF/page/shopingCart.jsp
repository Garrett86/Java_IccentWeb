<%@ page import="java.util.ArrayList" %>
<%@ page import="tw.com.kai.web.webbread.pojo.Bread" %><%--
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
    ArrayList<Bread> breads = (ArrayList) request.getAttribute("breadsproduct");
%>
<style>
    .btn_sub{
        margin-left: 85px;
        margin-top: 10px;
    }
</style>
<div class="container-md main-title">蛋糕系列</div>
<div class="container-md">
    <ol class="bread-it list-it" itemscope itemprop="https://schema.org/BreadcrumbList">
        <li itemprop="item-List" itemscope itemtype="https://schema.org/ListItem">
            <a href="indexServlet">
                <span>首頁</span>
            </a>
            <meta itemprop="position" content="1">
        </li>
        <li itemprop="item-List" itemscope itemtype="https://schema.org/ListItem">
            <a href="breadServlet">
                <span>蛋糕系列</span>
            </a>
            <meta itemprop="position" content="2">
        </li>
    </ol>
</div>
<div class="container-md">
    <div class="row">
        <%--pic_1--%>
        <div class="col col-lg-3">
            <li class="item">
                <div class="box">
                    <div class="pic-box">
                        <a href="##">
                            <img class="img-sh"
                                 src="<%=breads.get(0).getBreadImg()%>"
                                 alt=""></a>
                    </div>
                    <div class="txt">
                        <div class="nam"><%=breads.get(0).getBreadName()%>
                        </div>
                        <div class="desc"></div>
                        <div class="offers">NT$<%=breads.get(0).getPrice()%>
                        </div>
                        <a href="###"></a>
                    </div>
                    <div class="btn-group">
                        <form action="addToCart" method="post">
                            <input type="hidden" name="productId" value="<%=breads.get(0).getId()%>">
                            <input type="hidden" name="productName" value="<%=breads.get(0).getBreadName()%>">
                            <input type="hidden" name="price" value="<%=breads.get(0).getPrice()%>">
                            <label>數量：</label>
                            <input type="number" name="quantity" value="1" min="1">
                            <button class="btn_sub" type="submit" >加入購物車</button>
                        </form>
                    </div>
                </div>
            </li>
        </div>
            <%--pic_2--%>
            <div class="col col-lg-3">
                <li class="item">
                    <div class="box">
                        <div class="pic-box">
                            <a href="##">
                                <img class="img-sh"
                                     src="<%=breads.get(1).getBreadImg()%>"
                                     alt=""></a>
                        </div>
                        <div class="txt">
                            <div class="nam"><%=breads.get(1).getBreadName()%>
                            </div>
                            <div class="desc"></div>
                            <div class="offers">NT$<%=breads.get(1).getPrice()%>
                            </div>
                            <a href="###"></a>
                        </div>
                        <div class="btn-group">
                            <form action="addToCart" method="post">
                                <input type="hidden" name="productId" value="<%=breads.get(1).getId()%>">
                                <input type="hidden" name="productName" value="<%=breads.get(1).getBreadName()%>">
                                <input type="hidden" name="price" value="<%=breads.get(1).getPrice()%>">
                                <label>數量：</label>
                                <input type="number" name="quantity" value="1" min="1">
                                <button class="btn_sub" type="submit">加入購物車</button>
                            </form>
                        </div>
                    </div>
                </li>
            </div>
            <%--pic_3--%>
            <div class="col col-lg-3">
                <li class="item">
                    <div class="box">
                        <div class="pic-box">
                            <a href="##">
                                <img class="img-sh"
                                     src="<%=breads.get(2).getBreadImg()%>"
                                     alt=""></a>
                        </div>
                        <div class="txt">
                            <div class="nam"><%=breads.get(2).getBreadName()%>
                            </div>
                            <div class="desc"></div>
                            <div class="offers">NT$<%=breads.get(2).getPrice()%>
                            </div>
                            <a href="###"></a>
                        </div>
                        <div class="btn-group">
                            <form action="addToCart" method="post">
                                <input type="hidden" name="productId" value="<%=breads.get(2).getId()%>">
                                <input type="hidden" name="productName" value="<%=breads.get(2).getBreadName()%>">
                                <input type="hidden" name="price" value="<%=breads.get(2).getPrice()%>">
                                <label>數量：</label>
                                <input type="number" name="quantity" value="1" min="1">
                                <button class="btn_sub" type="submit">加入購物車</button>
                            </form>
                        </div>
                    </div>
                </li>
            </div>
            <%--pic_4--%>
            <div class="col col-lg-3">
                <li class="item">
                    <div class="box">
                        <div class="pic-box">
                            <a href="##">
                                <img class="img-sh"
                                     src="<%=breads.get(3).getBreadImg()%>"
                                     alt=""></a>
                        </div>
                        <div class="txt">
                            <div class="nam"><%=breads.get(3).getBreadName()%>
                            </div>
                            <div class="desc"></div>
                            <div class="offers">NT$<%=breads.get(3).getPrice()%>
                            </div>
                            <a href="###"></a>
                        </div>
                        <div class="btn-group">
                            <form action="addToCart" method="post">
                                <input type="hidden" name="productId" value="<%=breads.get(3).getId()%>">
                                <input type="hidden" name="productName" value="<%=breads.get(3).getBreadName()%>">
                                <input type="hidden" name="price" value="<%=breads.get(3).getPrice()%>">
                                <label>數量：</label>
                                <input type="number" name="quantity" value="1" min="1">
                                <button class="btn_sub" type="submit">加入購物車</button>
                            </form>
                        </div>
                    </div>
                </li>
            </div>
            <%--pic_5--%>
            <div class="col col-lg-3">
                <li class="item">
                    <div class="box">
                        <div class="pic-box">
                            <a href="##">
                                <img class="img-sh"
                                     src="<%=breads.get(4).getBreadImg()%>"
                                     alt=""></a>
                        </div>
                        <div class="txt">
                            <div class="nam"><%=breads.get(4).getBreadName()%>
                            </div>
                            <div class="desc"></div>
                            <div class="offers">NT$<%=breads.get(4).getPrice()%>
                            </div>
                            <a href="###"></a>
                        </div>
                        <div class="btn-group">
                            <form action="addToCart" method="post">
                                <input type="hidden" name="productId" value="<%=breads.get(4).getId()%>">
                                <input type="hidden" name="productName" value="<%=breads.get(4).getBreadName()%>">
                                <input type="hidden" name="price" value="<%=breads.get(4).getPrice()%>">
                                <label>數量：</label>
                                <input type="number" name="quantity" value="1" min="1">
                                <button class="btn_sub" type="submit">加入購物車</button>
                            </form>
                        </div>
                    </div>
                </li>
            </div>
            <%--pic_6--%>
            <div class="col col-lg-3">
                <li class="item">
                    <div class="box">
                        <div class="pic-box">
                            <a href="##">
                                <img class="img-sh"
                                     src="<%=breads.get(5).getBreadImg()%>"
                                     alt=""></a>
                        </div>
                        <div class="txt">
                            <div class="nam"><%=breads.get(5).getBreadName()%>
                            </div>
                            <div class="desc"></div>
                            <div class="offers">NT$<%=breads.get(5).getPrice()%>
                            </div>
                            <a href="###"></a>
                        </div>
                        <div class="btn-group">
                            <form action="addToCart" method="post">
                                <input type="hidden" name="productId" value="<%=breads.get(5).getId()%>">
                                <input type="hidden" name="productName" value="<%=breads.get(5).getBreadName()%>">
                                <input type="hidden" name="price" value="<%=breads.get(5).getPrice()%>">
                                <label>數量：</label>
                                <input type="number" name="quantity" value="1" min="1">
                                <button class="btn_sub" type="submit">加入購物車</button>
                            </form>
                        </div>
                    </div>
                </li>
            </div>
            <%--pic_7--%>
            <div class="col col-lg-3">
                <li class="item">
                    <div class="box">
                        <div class="pic-box">
                            <a href="##">
                                <img class="img-sh"
                                     src="<%=breads.get(6).getBreadImg()%>"
                                     alt=""></a>
                        </div>
                        <div class="txt">
                            <div class="nam"><%=breads.get(6).getBreadName()%>
                            </div>
                            <div class="desc"></div>
                            <div class="offers">NT$<%=breads.get(6).getPrice()%>
                            </div>
                            <a href="###"></a>
                        </div>
                        <div class="btn-group">
                            <form action="addToCart" method="post">
                                <input type="hidden" name="productId" value="<%=breads.get(6).getId()%>">
                                <input type="hidden" name="productName" value="<%=breads.get(6).getBreadName()%>">
                                <input type="hidden" name="price" value="<%=breads.get(6).getPrice()%>">
                                <label>數量：</label>
                                <input type="number" name="quantity" value="1" min="1">
                                <button class="btn_sub" type="submit" >加入購物車</button>
                            </form>
                        </div>
                    </div>
                </li>
            </div>

    </div>
</div>
</main>
<%@include file="/footer.jsp" %>