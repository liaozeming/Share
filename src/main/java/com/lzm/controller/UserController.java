package com.lzm.controller;

import com.lzm.pojo.User;
import com.lzm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * @author lzm
 * @create 2019- 07- 11- 22:06
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;


    //增加用户
    @RequestMapping(value = "/addUser.action" ,method = RequestMethod.POST)
    @ResponseBody
    public int addUser(@RequestBody User user)
    {

        String NewPassWord= DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
        user.setPassword(NewPassWord);
        int i = userService.addUser(user);
        System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+i);
        return  i;
    }

    //更新用户
    @RequestMapping(value = "/UpdateUser.action" ,method = RequestMethod.POST)
    @ResponseBody
    public int updateUser(HttpSession session, @RequestBody User user)
    {
        User user1 = (User) session.getAttribute("user");
        user.setPassword(user1.getPassword());
         user1 = userService.update(user);
        session.setAttribute("user",user1);
       return 1;
    }


    //    跳转到多图片测试界面
    @RequestMapping(value="/ToTest.action",method = RequestMethod.GET)
    public String ToLogin( )
    {
        return "test/test";
    }


    //    跳转到多图片测试界面
    @RequestMapping(value="/ToTest1.action",method = RequestMethod.GET)
    public String ToTest( )
    {
        return "test/test1";
    }
}
