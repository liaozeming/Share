package com.lzm.service;

import com.lzm.pojo.User;

import java.util.List;

public interface UserService {

    //增加用户
    int addUser(User user);

    //更新用户
    User update(User user);

    //根据昵称查询用户名
    List<User> selectUserByFname(User user);

    List<User>  selectUserByPhone(String phone);

     //修改账户密码
    int updatePassword(User user);

    User seleUserById(Integer userid);
}
