package service;

import pojo.Admin;

import java.util.List;

public interface AdminService {
    int deleteByPrimaryKey(Integer adminid);
    int insert(Admin record);
    Admin selectByPrimaryKey(Integer adminid);
    List<Admin> selectAll();
    int updateByPrimaryKey(Admin record);
    Admin selectByAdminname(String adminname);
}
