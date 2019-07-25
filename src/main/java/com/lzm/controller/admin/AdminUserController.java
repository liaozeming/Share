package com.lzm.controller.admin;

import com.lzm.pojo.User;
import com.lzm.service.UserService;
import com.lzm.utils.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 22- 11:03
 */
@Controller
public class AdminUserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value="/ShowAllUser.action",method = RequestMethod.GET)
    @ResponseBody
    public PageResult<List<User>> ShowAllUser(@RequestParam(value = "page") int page , int limit) {
        List<User> users = userService.selectAllUser(page,limit);
        //返回的总记录数
        int count=userService.findUserPageCount();
        PageResult<List<User>> listPageResult=new PageResult<List<User>>("",users,0,count);
        return listPageResult;

    }


    @RequestMapping(value="/selectUserByPhone.action",method = RequestMethod.GET)
    @ResponseBody
    public PageResult<List<User>> selectUserByPhone(@RequestParam(value = "page") int page , int limit,String phone) {

        System.out.println(phone);
        List<User> users = userService.selectUserByPhone(phone);
        PageResult<List<User>> listPageResult=new PageResult<List<User>>("",users,0,1);
        return listPageResult;
    }

    //根据ID删除用户
    @RequestMapping(value="/deleteUser.action",method = RequestMethod.GET)
    @ResponseBody
    public int deleteUser(int id) {
     int a=userService.deleteUserByID(id);
     return a;
    }

    @RequestMapping(value="/updateUser.action",method = RequestMethod.POST)
    @ResponseBody
    public User updateUser(@RequestBody User user) {

        String    password= DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
        user.setPassword(password);
        user=userService.updateUser(user);
        return user;
    }

    @RequestMapping(value="/AddUser.action",method = RequestMethod.POST)
    @ResponseBody
    public int AddUser(@RequestBody User user) {
        if (userService.selectUserByPhone(user.getPhone()).size()>0)
        {
            return 2;
        }else
        {
            //2：手机号重复  1：添加成功  0：用户名重复
            String    password= DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
            int  a=userService.addUser(user);
            return a;
        }
    }



}
