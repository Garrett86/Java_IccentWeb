<%@ page import="tw.com.kai.web.webbread.dao.Impl.CartDaoImpI" %>
<%@ page import="java.util.List" %>
<%@ page import="tw.com.kai.web.webbread.pojo.CartItem" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/11/25
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/header.jsp" %>
<main>
    <style>
        .cart_wap {
            font-family: "Noto Sans TC", sans-serif;
            font-optical-sizing: auto;
            font-weight: < weight >;
            font-style: normal;

            display: flex;
            justify-content: center;
        }

        .wap {
            position: relative;
            top: 7px;
        }

        .cart_table {
            position: relative;
            top: 3px;
            left: 105px;
        }

        table {
            border-collapse: separate; /* 使用分離邊框模式 */
            border-spacing: 10px; /* 格子之間的距離 */
            width: 100%;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
        }
        td{
            border-spacing: 3px;
        }

        .cart_clear {
            height: 30px;
        }

        .btn_clear {
            float: right;
            position: relative;
            top: 2px;
            right: 10px;
        }
    </style>
    <div class="container">
        <%
            CartDaoImpI cart = (CartDaoImpI) session.getAttribute("cart");
            String action = request.getParameter("action");
            if ("clear".equals(action) && cart != null) {
                cart.clear();
            }
        %>
        <h2 class="cart_wap wap">購物車</h2>
        <%
            if (cart == null || cart.getItems().isEmpty()) {
        %>
        <p class="cart_table">購物車是空的。</p>
        <%
        } else {
            List<CartItem> list = cart.getItems();
        %>
        <div class="container-md">
            <table>
                <tr>
                    <th>商品名稱</th>
                    <th>數量</th>
                    <th>價格</th>
                    <th>總價</th>
                </tr>
                <%for (CartItem item : list) {%>
                <tr>
                    <td><%=item.getProductName()%>
                    </td>
                    <td><%=item.getQuantity()%>
                    </td>
                    <td><%=(int) item.getPrice()%>
                    </td>
                    <td><%= (int) (item.getPrice() * item.getQuantity())%>
                    </td>
                </tr>
                <%}%>
            </table>

            <form class="cart_clear" action="cart.jsp" method="get">
                <input type="hidden" name="action" value="clear">
                <button class="btn_clear" type="submit">清空購物車</button>
            </form>
        </div>
        <%}%>
    </div>
</main>
<%@include file="/footer.jsp" %>