package tw.com.kai.web.webbread.mappers;


import tw.com.kai.web.webbread.pojo.Bread;

import java.util.List;

public interface BreadMapper {
    List<Bread> listBread(); // 對應到 SQL 查詢方法
}