package tw.com.kai.web.webbread.dao.Impl;

import org.apache.ibatis.session.SqlSession;
import tw.com.kai.web.webbread.dao.Bread2Dao;
import tw.com.kai.web.webbread.mappers.Bread2Mapper;
import tw.com.kai.web.webbread.pojo.Bread1;
import tw.com.kai.web.webbread.utils.MyBatisUtil;

import java.util.List;

public class Bread2DaoImpl implements Bread2Dao {

    @Override
    public List<Bread1> listBread1() {
        try(SqlSession sqlSession = MyBatisUtil.getSqlSession()) {
            Bread2Mapper mapper = sqlSession.getMapper(Bread2Mapper.class);
            return mapper.listBread1();
        }
    }
}
