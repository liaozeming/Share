package com.lzm.controller;

import com.lzm.pojo.Account;
import com.lzm.pojo.User;
import com.lzm.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 16- 11:02
 */
//用户账户
    @Controller
public class UserAccountController {
        @Autowired
        private AccountService accountService;
        //根据用户id查询用户的账户
    @RequestMapping(value = "/UserAccount.action",method = RequestMethod.POST)
    @ResponseBody
    public List<Account> SelectAccountByUserId(HttpSession session)
    {
        User user= (User) session.getAttribute("user");
        int user_id=user.getId();
        System.out.println("111111111111111111111111111111"+user_id);
        List<Account> accounts = accountService.selectAccountByUserID(user_id);
        return accounts;
    }
}
