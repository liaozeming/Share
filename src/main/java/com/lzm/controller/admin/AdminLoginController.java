package com.lzm.controller.admin;

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
 * @create 2019- 07- 22- 9:59
 */
@Controller
public class AdminLoginController {
    @Autowired
    private UserService userService;

    @RequestMapping(value="/adminlogin.action",method = RequestMethod.POST)
    @ResponseBody
    public String login(HttpSession session, @RequestBody User user) {
        String password = DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
        User user1 = userService.selectAdminByPhone(user.getPhone());

            if (user1 != null && user1.getPassword().equals(password)) {
                session.setAttribute("user", user1);
                return "1";
            } else {
                return "0";
            }

    }
}
