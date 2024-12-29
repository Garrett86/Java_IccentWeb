package tw.com.kai.web.webbread.dao.Impl;


import tw.com.kai.web.webbread.dao.UserDao;
import tw.com.kai.web.webbread.utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {

    @Override
    public boolean ValidLogin(String uname, String pwd) {
        try(Connection conn = DBConnection.getDB().getConn()) {
            String sql = "select * from user where username = ?";
            try(PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, uname);
                try(ResultSet rs = ps.executeQuery()) {
                    if(rs.next()) {
                        String storedPassword = rs.getString("pwd");
                        if(storedPassword.equals(pwd)) {
                            return true;
                        }else{

                        }
                    }
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return false;
    }
}
