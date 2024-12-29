$(document).ready(function () {
    let page = 1;  // 初始頁數
    const pageSize = 8;  // 每頁顯示數量
    const container = $('#imageResultsContainer');  // 顯示麵包列表的容器

    // 初始化 Infinite Scroll
    container.infiniteScroll({
        path: function () {
            return `${container.data('url')}?page=${page + 1}&pageSize=${pageSize}`;  // 更新請求的 URL，傳遞新的頁數
        },
        append: '.col',  // 每次加載的元素選擇器，這裡是包含麵包項目的 div
        history: false,  // 禁用歷史記錄
        status: '.page-load-status',  // 顯示加載狀態的元素
        scrollThreshold: 500,  // 滾動條到達距離底部 500 像素時觸發加載
    });

    // 發送 AJAX 請求並加載資料
    function loadBreads() {
        $.ajax({
            url: container.data('url'), // 從容器獲取 API 地址
            data: { page: page, pageSize: pageSize },  // 發送分頁參數
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                if (data && data.length > 0) {
                    page++;  // 分頁加1

                    // 動態生成 HTML 內容
                    $.each(data, function (index, bread) {
                        container.append(`
                            <div class="col col-lg-3">
                                <li class="item">
                                    <div class="box">
                                        <div class="pic-box">
                                            <a href="ShopOrd">
                                                <img class="img-sh" src="${bread.breadImg}" alt="">
                                            </a>
                                        </div>
                                        <div class="txt">
                                            <div class="nam">${bread.breadName}</div>
                                            <div class="desc"></div>
                                            <div class="offers">NT$${bread.price}</div>
                                        </div>
                                        <div class="btn-group">
                                            <a href="###" class="btn-g ws" role="button">加入追蹤</a>
                                            <a href="###" class="btn-g det" role="button">詳細介紹</a>
                                        </div>
                                    </div>
                                </li>
                            </div>
                        `);
                    });
                } else {
                    container.append('<p>沒有更多麵包資料！</p>');  // 顯示無更多資料
                }
            },
            error: function (xhr, status, error) {
                console.error('Error loading breads:', error);
                alert('無法加載麵包數據，請稍後重試！');
            }
        });
    }

    // 頁面加載時觸發第一次加載
    loadBreads();
});
