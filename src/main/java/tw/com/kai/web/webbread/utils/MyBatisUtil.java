package tw.com.kai.web.webbread.utils;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.transaction.jdbc.JdbcTransactionFactory;
import org.apache.ibatis.mapping.Environment;
import org.apache.ibatis.builder.xml.XMLConfigBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Logger;

public class MyBatisUtil {
    private static final Logger logger = Logger.getLogger(MyBatisUtil.class.getName());
    private static SqlSessionFactory sqlSessionFactory;

    static {
        try {
            String resource = "mybatis-config.xml";
            InputStream inputStream = Resources.getResourceAsStream(resource);

            // HikariCP 設定
            HikariConfig hikariConfig = new HikariConfig();
            hikariConfig.setJdbcUrl("jdbc:mysql://mdy5xlha9cp31ysz:kmwdg0pbehfqqe1j@muowdopceqgxjn2b3.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/murqsny7x16bj6cv");
            hikariConfig.setUsername("tmdy5xlha9cp31ysz");
            hikariConfig.setPassword("kmwdg0pbehfqqe1j");
            hikariConfig.setDriverClassName("com.mysql.cj.jdbc.Driver");
            hikariConfig.setMaximumPoolSize(10);
            hikariConfig.setIdleTimeout(30000);
            HikariDataSource dataSource = new HikariDataSource(hikariConfig);

            // 解析 MyBatis XML 配置
            XMLConfigBuilder parser = new XMLConfigBuilder(inputStream);
            Configuration configuration = parser.parse();

            // 設定 DataSource 環境
            Environment environment = new Environment("development", new JdbcTransactionFactory(), dataSource);
            configuration.setEnvironment(environment);

            // 建立 SqlSessionFactory
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(configuration);

        } catch (IOException e) {
            logger.severe("MyBatis 初始化失敗: " + e.getMessage());
            throw new RuntimeException("MyBatis 初始化失敗", e);
        }
    }

    public static SqlSession getSqlSession() {
        return getSqlSession(false);
    }

    public static SqlSession getSqlSession(boolean autoCommit) {
        return sqlSessionFactory.openSession(autoCommit);
    }

    public static SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public static void closeSqlSession(SqlSession session) {
        if (session != null) {
            session.close();
        }
    }
}
