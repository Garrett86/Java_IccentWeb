package tw.com.kai.web.webbread.dao;

import tw.com.kai.web.webbread.base.BaseDao;
import tw.com.kai.web.webbread.pojo.User;

public interface UserDaoV2 extends BaseDao<User> {
    boolean validateUser(String uname, String pwd);
}
