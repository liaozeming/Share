package com.lzm.controller;

import com.lzm.mapper.UserMapper;
import com.lzm.pojo.User;
import com.lzm.service.UserService;
import com.lzm.utils.SendSms;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 11- 16:27
 */
@Controller
public class RegisterController {

    @Autowired
    private  UserMapper  userMapper;
    @Autowired
    private  SendSms sendSms;
    @Autowired
    private UserService userService;

    String sendcheck;


//注册新用户
@RequestMapping(value="/RegisterUser.action",method = RequestMethod.POST)
@ResponseBody
public String Register(@RequestBody User user)
{
    //判断密码验证码是否正确
    String receivecheck = user.getPhonecheck();

    //验证码不正确或者已经注册
    if (!sendcheck.equals(receivecheck)||userService.selectUserByPhone(user.getPhone()).size()!=0)
    {
        return "0";
    }else {
        //对密码加密
//        user.setIdcard(user.getPassword());
        String    password= DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
        user.setPassword(password);
    String i = String.valueOf(userService.addUser(user));
        return i;
    }

}

//前台注册获取验证码
    @RequestMapping(value="/getPhoneChecklogin.action",method = RequestMethod.POST)
    @ResponseBody
    public String getPhoneCheck(@RequestBody User user )
    {
        //根据手机号查询用户
        int i = userService.selectUserByPhone(user.getPhone()).size();
        if (i==0)
        {
            sendcheck = sendSms.PhoneMsg(user.getPhone());
            return "1";
        }else return "0";

    }


    @RequestMapping(value="/getPhoneForgetlogin.action",method = RequestMethod.POST)
    @ResponseBody
    public String getPhoneForgetlogin(@RequestBody User user )
    {
        //根据手机号查询用户
        int i = userService.selectUserByPhone(user.getPhone()).size();
        if (i!=0)
        {
            sendcheck = sendSms.PhoneMsg(user.getPhone());
            return "1";
        }else return "0";
    }

//用户登陆
    @RequestMapping(value="/login.action",method = RequestMethod.POST)
    @ResponseBody
    public String login(HttpSession session, @RequestBody User user) {
        String password = DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
        List<User> users = userService.selectUserByPhone(user.getPhone());
        if (users.size()>=1)
        {
            User user1 = users.get(0);
            if (user1 != null && user1.getPassword().equals(password)&&user1.getIsadmin()!="1") {
                session.setAttribute("user", user1);
                return "1";
            } else {
                return "0";
            }
        }else return "0";

    }


    //忘记密码
    @RequestMapping(value="/forgetlogin.action",method = RequestMethod.POST)
    @ResponseBody
    public String forgetlogin(HttpSession session, @RequestBody User user) {
        //判断密码验证码是否正确
        String receivecheck = user.getPhonecheck();

        if (!sendcheck.equals(receivecheck))
        {
            return "0";
        }else {
            //对密码加密
//        user.setIdcard(user.getPassword());
            String    password= DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
            user.setPassword(password);
            String i = String.valueOf(userService.updatePassword(user));
            return i;
        }



    }

}

