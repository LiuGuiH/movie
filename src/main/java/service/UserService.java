package service;

import pojo.User;
import pojo.UserInfo;

import java.util.List;

public interface UserService {

    int deleteByPrimaryKey(Integer id);
    int insert(User record);
    User selectByPrimaryKey(Integer id);
    List<User> selectAll();
    int updateByPrimaryKey(User record);
    User selectByUsername(String username);
}
