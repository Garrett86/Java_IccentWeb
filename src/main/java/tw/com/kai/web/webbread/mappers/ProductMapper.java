package tw.com.kai.web.webbread.mappers;

import tw.com.kai.web.webbread.pojo.Bread;

import java.util.List;

public interface ProductMapper {
    void save(Bread bread);       // 保存麵包
    List<Bread> search(String breadName); // 根據麵包名稱查詢
    void delete(int id);          // 刪除指定 ID 的麵包
    void update(Bread bread);     // 更新麵包資訊
}
