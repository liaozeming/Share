package com.lzm.controller;

import com.lzm.pojo.Project;
import com.lzm.service.FreeRecommendServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 13- 13:31
 */
@Controller
public class FreeProjectController {

    @Autowired
    private FreeRecommendServiceImpl freeRecommendService;

    //免费物品推荐，根据支持人数推荐
    @RequestMapping(value="/FreeProjectCommend.action",method = RequestMethod.POST)
    @ResponseBody
    public List<Project> FreeProjectCommend(Model model)
    {
        List<Project> projects=freeRecommendService.selectByNumSup();
        if (projects.size()!=0)
        {
            return projects;
        }
        return null;
    }
}
