package tw.com.kai.web.webbread.mappers;

import org.apache.ibatis.annotations.Param;
import tw.com.kai.web.webbread.pojo.User;

public interface UserMapper {
    User findByUsernameAndPassword(@Param("uname") String uname, @Param("pwd") String pwd);
}
