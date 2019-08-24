package service;

import pojo.UserInfo;

import java.util.List;

public interface UserInfoService {
    int deleteByPrimaryKey(Integer userinfoid);
    int insert(UserInfo record);
    UserInfo selectByPrimaryKey(Integer userinfoid);
    List<UserInfo> selectAll();
    int updateByPrimaryKey(UserInfo record);
    UserInfo selectByUserId(Integer userid);
}
