package tw.com.kai.web.webbread.dao.Impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import tw.com.kai.web.webbread.dao.UserDaoV2;
import tw.com.kai.web.webbread.mappers.UserMapper;
import tw.com.kai.web.webbread.pojo.User;
import tw.com.kai.web.webbread.utils.MyBatisUtil;

 public class UserDaoV2Impl implements UserDaoV2 {
    // 使用 MyBatis 工具類別來獲取 SqlSessionFactory
    private final SqlSessionFactory sqlSessionFactory = MyBatisUtil.getSqlSessionFactory();
    @Override
    public boolean validateUser(String uname, String pwd) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession()) {
            // 使用 MyBatis Mapper
            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
            User user = userMapper.findByUsernameAndPassword(uname, pwd);
            return user != null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
