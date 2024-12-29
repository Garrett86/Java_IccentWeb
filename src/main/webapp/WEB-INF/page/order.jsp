<%--
  Created by IntelliJ IDEA.
  User: Garrett  Lyu
  Date: 2024/7/31
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-Hant-TW">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>松本村顧客中心</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
    <link rel="stylesheet" href="static/css/order.css">
    <link rel="icon" type="image/x-icon" href="favicon.ico" />
</head>

<body>
<header class="bg-dark text-white p-3">
    <div class="container">
        <div class="site-txt">
            <a href="indexServlet">
                <img class="logo" src="static/images/logo.gif">
            </a>
            <h1 class="h3 mb-0 txt">|顧客中心</h1>
            <a class="home_bk" href="LogServ">回首頁</a>
        </div>
    </div>
</header>

<div class="container my-4">
    <div class="row">
        <nav class="col-md-3 mb-4">
            <div class="list-group">
                <a href="#dashboard" class="list-group-item list-group-item-action active">儀表板</a>
                <a href="#account-info" class="list-group-item list-group-item-action">帳戶信息</a>
                <a href="#orders" class="list-group-item list-group-item-action">訂單歷史</a>
                <a href="#addresses" class="list-group-item list-group-item-action">地址管理</a>
                <a href="#payment-methods" class="list-group-item list-group-item-action">支付方式</a>
                <a href="#wishlist" class="list-group-item list-group-item-action">收藏夾</a>
                <a href="#settings" class="list-group-item list-group-item-action">帳號設置</a>
            </div>
        </nav>

        <main class="col-md-9">
            <!-- 儀表板 -->
            <section id="dashboard" class="mb-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">儀表板</div>
                    <div class="card-body">
                        <h5 class="card-title">最近活動</h5>
                        <p>查看最近的訂單和收藏的商品。</p>
                    </div>
                </div>
            </section>

            <!-- 帳戶信息 -->
            <section id="account-info" class="mb-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">帳戶信息</div>
                    <div class="card-body">
                        <form>
                            <div class="mb-3">
                                <label for="name" class="form-label">姓名</label>
                                <input type="text" id="name" name="name" class="form-control" value="王小明">
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">電郵</label>
                                <input type="email" id="email" name="email" class="form-control"
                                       value="xiaoming@example.com">
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">電話</label>
                                <input type="text" id="phone" name="phone" class="form-control"
                                       value="0900-123-456">
                            </div>
                            <button type="submit" class="btn btn-primary">保存更改</button>
                        </form>
                        <hr>
                        <h5 class="card-title">修改密碼</h5>
                        <form>
                            <div class="mb-3">
                                <label for="current-password" class="form-label">當前密碼</label>
                                <input type="password" id="current-password" name="current-password"
                                       class="form-control">
                            </div>
                            <div class="mb-3">
                                <label for="new-password" class="form-label">新密碼</label>
                                <input type="password" id="new-password" name="new-password" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-primary">更新密碼</button>
                        </form>
                    </div>
                </div>
            </section>

            <!-- 訂單歷史 -->
            <section id="orders" class="mb-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">訂單歷史</div>
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>訂單編號</th>
                                <th>日期</th>
                                <th>狀態</th>
                                <th>總金額</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>#12345</td>
                                <td>2024-07-31</td>
                                <td><span class="badge bg-success">已完成</span></td>
                                <td>$299.00</td>
                                <td><a href="#order-details" class="btn btn-sm btn-outline-primary">查看詳情</a>
                                </td>
                            </tr>
                            <!-- 更多訂單資料 -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

            <!-- 地址管理 -->
            <section id="addresses" class="mb-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">地址管理</div>
                    <div class="card-body">
                        <h5 class="card-title">已保存的地址</h5>
                        <ul class="list-group">
                            <li class="list-group-item">
                                台北市中山區XX路XX號
                                <a href="#edit" class="btn btn-sm btn-outline-secondary float-end ms-2">編輯</a>
                                <a href="#delete" class="btn btn-sm btn-outline-danger float-end">刪除</a>
                            </li>
                            <!-- 更多地址資料 -->
                        </ul>
                        <hr>
                        <h5 class="card-title">新增地址</h5>
                        <form>
                            <div class="mb-3">
                                <label for="new-address" class="form-label">地址</label>
                                <input type="text" id="new-address" name="new-address" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-primary">添加地址</button>
                        </form>
                    </div>
                </div>
            </section>

            <!-- 支付方式管理 -->
            <section id="payment-methods" class="mb-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">支付方式管理</div>
                    <div class="card-body">
                        <h5 class="card-title">已保存的支付方式</h5>
                        <ul class="list-group">
                            <li class="list-group-item">
                                信用卡 **** **** **** 1234
                                <a href="#delete" class="btn btn-sm btn-outline-danger float-end">移除</a>
                            </li>
                            <!-- 更多支付方式資料 -->
                        </ul>
                        <hr>
                        <h5 class="card-title">新增支付方式</h5>
                        <form>
                            <div class="mb-3">
                                <label for="card-number" class="form-label">信用卡號碼</label>
                                <input type="text" id="card-number" name="card-number" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label for="expiry-date" class="form-label">到期日期</label>
                                <input type="text" id="expiry-date" name="expiry-date" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-primary">添加支付方式</button>
                        </form>
                    </div>
                </div>
            </section>

            <!-- 收藏夾 -->
            <section id="wishlist" class="mb-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">收藏夾</div>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item">
                                iPhone 14
                                <a href="#remove" class="btn btn-sm btn-outline-danger float-end ms-2">移除</a>
                                <a href="#add-to-cart" class="btn btn-sm btn-outline-primary float-end">加入購物車</a>
                            </li>
                            <!-- 更多收藏商品 -->
                        </ul>
                    </div>
                </div>
            </section>

            <!-- 帳號設置 -->
            <section id="settings" class="mb-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">帳號設置</div>
                    <div class="card-body">
                        <h5 class="card-title">通知設置</h5>
                        <form>
                            <div class="form-check form-switch mb-3">
                                <input class="form-check-input" type="checkbox" id="email-notifications" checked>
                                <label class="form-check-label" for="email-notifications">電郵通知</label>
                            </div>
                            <div class="form-check form-switch mb-3">
                                <input class="form-check-input" type="checkbox" id="sms-notifications">
                                <label class="form-check-label" for="sms-notifications">短訊通知</label>
                            </div>
                            <button type="submit" class="btn btn-primary">保存設置</button>
                        </form>
                        <hr>
                        <h5 class="card-title">隱私設置</h5>
                        <form>
                            <div class="form-check form-switch mb-3">
                                <input class="form-check-input" type="checkbox" id="public-profile">
                                <label class="form-check-label" for="public-profile">公開個人資料</label>
                            </div>
                            <div class="form-check form-switch mb-3">
                                <input class="form-check-input" type="checkbox" id="data-sharing">
                                <label class="form-check-label" for="data-sharing">允許數據共享</label>
                            </div>
                            <button type="submit" class="btn btn-primary">保存設置</button>
                        </form>
                    </div>
                </div>
            </section>
        </main>
    </div>
</div>

<footer class="bg-dark text-white text-center py-3">
    <p class="mb-0">Copyright 松本村 &copy;2024</p>
</footer>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>

</html>
