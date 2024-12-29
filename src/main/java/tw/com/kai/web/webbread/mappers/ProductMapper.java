package tw.com.kai.web.webbread.mappers;

import org.apache.ibatis.annotations.*;
import tw.com.kai.web.webbread.pojo.Bread;

import java.util.List;

public interface ProductMapper {
    @Insert("INSERT INTO t_bread(breadImg, breadName, price, saleCount, breadCount) VALUES(#{breadImg}, #{breadName}, #{price}, #{saleCount}, #{breadCount})")
    void save(Bread bread);       // 保存麵包

    @Select("SELECT * FROM t_bread WHERE breadName LIKE CONCAT('%', #{breadName}, '%')")
    List<Bread> search(String breadName); // 根據麵包名稱查詢

    @Delete("DELETE FROM t_bread WHERE id = #{id}")
    void delete(int id);          // 刪除指定 ID 的麵包

    @Update("UPDATE t_bread SET breadImg=#{breadImg}, breadName=#{breadName}, price=#{price}, saleCount=#{saleCount}, breadCount=#{breadCount} WHERE id=#{id}")
    void update(Bread bread);     // 更新麵包資訊
}
