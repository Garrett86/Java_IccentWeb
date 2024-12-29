<%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/7/23
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/header.jsp"%>

<!-- ===================================================== -->
<div class="container marketing">
    <div class="row clearfix">
        <div class="login-a2">

            <div class="page-inner">
                <div class="box-css">
                    <p class="login-title">登入</p>
                    <form action="loginServlet" method="post">
                        <input type="text" class=" input_btn unline-input" placeholder="電郵或手機號碼" id="uname" name="uname">
                        <input type="password" class=" input_btn2 unline-input" placeholder="密碼" id="pwd" name="pwd"><br>
                        <a class="chak-link" href="...">忘記密碼?</a>
                        <button type="submit" class="lg_in lg_btn">登入</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/footer.jsp"%>

