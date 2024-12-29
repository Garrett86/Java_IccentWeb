<%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/8/21
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Successful2</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
        }

        #loader {
            width: 100px;
            height: 100px;
            border: 16px solid #3498db; /* 齒輪顏色 */
            border-radius: 50%;
            position: relative;
            animation: spin 3s linear infinite; /* 齒輪旋轉動畫 */
        }

        #loader::before,
        #loader::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            border: 16px solid transparent;
            border-radius: 50%;
            box-sizing: border-box;
        }

        #loader::before {
            transform: rotate(60deg);
            border-left: 16px solid #3498db;
            border-right: 16px solid #3498db;
        }

        #loader::after {
            transform: rotate(120deg);
            border-top: 16px solid #3498db;
            border-bottom: 16px solid #3498db;
        }

        @keyframes spin {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }

    </style>
    <script type="text/javascript">
        // 延遲 2 秒後跳轉到主頁
        setTimeout(function() {
            window.location.href = "back_inSlv";
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
    <p>You will be redirected to the home page in 2 seconds...</p>
</div>
</body>
</html>
