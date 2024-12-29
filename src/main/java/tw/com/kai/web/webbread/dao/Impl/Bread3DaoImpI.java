package tw.com.kai.web.webbread.dao.Impl;

import org.apache.ibatis.session.SqlSession;
import tw.com.kai.web.webbread.dao.Bread3Dao;
import tw.com.kai.web.webbread.mappers.Bread3Mapper;
import tw.com.kai.web.webbread.pojo.Bread2;
import tw.com.kai.web.webbread.utils.MyBatisUtil;

import java.util.List;

public class Bread3DaoImpI implements Bread3Dao {

    @Override
    public List<Bread2> listBread2() {
        try (SqlSession session = MyBatisUtil.getSqlSession()) {
            // 調用對應的 Mapper 方法
            Bread3Mapper mapper = session.getMapper(Bread3Mapper.class);
            return mapper.listBread2();
        } catch (Exception e) {
            throw new RuntimeException("Error querying breads", e);
        }
    }
}
