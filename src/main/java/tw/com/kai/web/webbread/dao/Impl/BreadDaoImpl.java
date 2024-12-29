package tw.com.kai.web.webbread.dao.Impl;

import org.apache.ibatis.session.SqlSession;
import tw.com.kai.web.webbread.dao.BreadDao;
import tw.com.kai.web.webbread.mappers.BreadMapper;
import tw.com.kai.web.webbread.pojo.Bread;
import tw.com.kai.web.webbread.utils.MyBatisUtil;

import java.util.List;

public class BreadDaoImpl implements BreadDao {

    @Override
    public List<Bread> listBread() {
        try (SqlSession session = MyBatisUtil.getSqlSession()) {
            // 調用對應的 Mapper 方法
            BreadMapper mapper = session.getMapper(BreadMapper.class);
            return mapper.listBread();
        } catch (Exception e) {
            throw new RuntimeException("Error querying breads", e);
        }
    }
}
