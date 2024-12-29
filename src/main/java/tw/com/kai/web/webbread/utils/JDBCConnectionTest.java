package tw.com.kai.web.webbread.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnectionTest {
    public static void main(String[] args) {
        // 資料庫連接的 URL，請根據您的資料庫配置修改
        String url = "jdbc:sqlserver://34.136.28.87:1433;databaseName=bread_mall;encrypt=true;trustServerCertificate=true";
        String user = "sqlserver"; // 替換為你的使用者名稱
        String password = "Password"; // 替換為你的密碼

        // 連接對象
        Connection connection = null;

        try {
            // 加載 SQL Server 驅動
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            // 嘗試建立連接
            connection = DriverManager.getConnection(url, user, password);

            // 輸出成功信息
            if (connection != null) {
                System.out.println("成功連接到資料庫!");
            } else {
                System.out.println("無法連接到資料庫.");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC 驅動程式未找到.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("資料庫連接錯誤:");
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
