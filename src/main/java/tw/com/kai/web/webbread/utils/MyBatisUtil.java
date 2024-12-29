package tw.com.kai.web.webbread.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MyBatisUtil {
    private static final Logger logger = Logger.getLogger(MyBatisUtil.class.getName());
    private static SqlSessionFactory sqlSessionFactory;

    static {
        try {
            // 加載 MyBatis 配置檔
            String resource = "mybatis-config.xml";
            InputStream inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            logger.info("MyBatis SqlSessionFactory initialized successfully.");
        } catch (IOException e) {
            logger.log(Level.SEVERE, "Failed to load MyBatis configuration", e);
            throw new RuntimeException("Failed to load MyBatis configuration", e);
        }
    }

    // 獲取 SqlSession，默認不自動提交
    public static SqlSession getSqlSession() {
        return getSqlSession(false);
    }

    //獲取 SqlSession，指定是否自動提交
    public static SqlSession getSqlSession(boolean autoCommit) {
        return sqlSessionFactory.openSession(autoCommit);
    }

    // 獲取 SqlSessionFactory
    public static SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    // 關閉 SqlSession（在必要時可額外調用）
    public static void closeSqlSession(SqlSession session) {
        if (session != null) {
            session.close();
        }
    }

}

