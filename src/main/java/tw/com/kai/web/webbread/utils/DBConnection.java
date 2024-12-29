package tw.com.kai.web.webbread.utils;

import java.sql.*;

public class DBConnection {
    private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private final String JDBC_URL = "jdbc:mysql://127.0.0.1:3306/bread_mall";
    private final String JDBC_USERNAME = "root";
    	private final String JDBC_PASS = "Password";
//    private final String JDBC_PASS = "Password123";
    private Connection conn = null;

    private DBConnection() {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static DBConnection getDB() {
        return new DBConnection();
    }

    public Connection getConn() {
        try {
            conn=DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASS);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return conn;

    }

    public void close(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    public void close(PreparedStatement ps) {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    public void close(Statement st) {
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    public void close(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
}
