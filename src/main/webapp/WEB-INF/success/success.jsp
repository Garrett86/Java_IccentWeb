<%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/8/1
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Successful</title>
    <style>
        /*居中加載動畫*/
        #loader {
            border: 16px solid #f3f3f3; /* 灰色邊框 */
            border-top: 16px solid #3498db; /* 蓝色邊框 */
            border-radius: 50%;
            width: 120px;
            height: 120px;
            animation: spin 2s linear infinite; /* 旋轉動畫 */
            margin: 0 auto;
            position: absolute;
            top: 30%;
            left: 45%;
            transform: translate(-50%, -50%);
        }
        /* 旋轉動畫 */
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* 文本居中 */
        body {
            text-align: center;
            font-family: Arial, sans-serif;
        }

        /* 隐藏頁面内容 */
        #content {
            display: none;
        }
    </style>
    <script type="text/javascript">
        // 延遲 2 秒後跳轉到主頁
        setTimeout(function() {
            window.location.href = "orderSlv";
        }, 2000); // 2000 毫秒 = 2 秒

        window.onload = function() {
            document.getElementById('loader').style.display = 'block';
            document.getElementById('content').style.display = 'none';
        }
    </script>
</head>
<body>
<!-- 加载動畫 -->
<div id="loader"></div>

<!-- 頁面内容 -->
<div id="content">
    <h1>Login Successful</h1>
    <p>You will be redirected to the home page in 5 seconds...</p>
</div>
</body>
</html>
