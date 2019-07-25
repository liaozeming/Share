package com.lzm.controller;

import com.lzm.pojo.Project;
import com.lzm.pojo.User;
import com.lzm.service.RecommendService;
import com.lzm.service.RecommendServiceImpl;
import com.lzm.utils.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 13- 8:19
 */
//首页推荐显示
    @Controller
public class RecommendController {

        @Autowired
        private RecommendService recommendService;

        //根据购买人数进行推荐
        @RequestMapping(value="/RecommendProject.action",method = RequestMethod.POST)
        @ResponseBody
        public  List<Project> RecommendProject(Model model)
        {
            List<Project> projects=recommendService.selectByNumSup();
            if (projects.size()!=0)
            {
                return projects;
            }
           return null;
        }




}
