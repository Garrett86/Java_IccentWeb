package tw.com.kai.web.webbread.dao;



import tw.com.kai.web.webbread.base.BaseDao;
import tw.com.kai.web.webbread.pojo.User;

public interface UserDao extends BaseDao<User> {
    public boolean ValidLogin(String uname, String pwd);
}
