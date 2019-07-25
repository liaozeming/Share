package com.lzm.controller;

import com.lzm.pojo.Collections;
import com.lzm.pojo.Project;
import com.lzm.pojo.User;
import com.lzm.service.SupportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 17- 14:05
 * 我的支持
 */
@Controller
public class SupportController {
    @Autowired
    private SupportService supportService;
    //根据用户id号和产品类型返回
    @RequestMapping(value="/ShowProjectByType.action",method = RequestMethod.GET)
    @ResponseBody
    public List<Support> ShowSupportProject(HttpSession session, int typeId) {
        User user = (User) session.getAttribute("user");
        int userId = user.getId();
        List<Support>  supports=supportService.selectSupportByTypeAndUser(userId,typeId);
        return supports;
    }

}
