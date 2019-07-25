package com.lzm.controller;

import com.lzm.pojo.Address;
import com.lzm.pojo.Project;
import com.lzm.pojo.User;
import com.lzm.service.UserProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 16- 22:15
 */
//我的项目
    @Controller
public class UserProjectController {
        @Autowired
    private UserProjectService userProjectService;
        //根据用户ID号和众筹状态查询相应的项目
        //0 ：全部 1：待审核  2：众筹中  3：众筹完成
         @RequestMapping(value="/UserProject.action",method = RequestMethod.GET)
        @ResponseBody
        public List<Project> UserProject(HttpSession session, String status){
             User user= (User) session.getAttribute("user");
             int userid=user.getId();
             List<Project> projects=userProjectService.selectByStatusAndUserID(userid,status);
             return projects;
        }
}
