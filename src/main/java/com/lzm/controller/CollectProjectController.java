package com.lzm.controller;

import com.lzm.pojo.Collections;
import com.lzm.pojo.Project;
import com.lzm.pojo.User;
import com.lzm.service.CollectProjectService;
import com.lzm.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 17- 10:12
 */
@Controller
public class CollectProjectController {
    @Autowired
  private CollectProjectService collectProjectService;

    //收藏产品
    @RequestMapping(value="/collectProject.action",method = RequestMethod.GET)
    @ResponseBody
    public int collectProject(HttpSession session, int id) {
        User user = (User) session.getAttribute("user");
         int userId = user.getId();
       int a=collectProjectService.insertCollect( userId, id);
       return  a;
    }

    @RequestMapping(value="/ShowCollectProject.action",method = RequestMethod.GET)
    @ResponseBody
    public List<Collections> ShowCollectProject(HttpSession session) {
        User user = (User) session.getAttribute("user");
        int userId = user.getId();
        List<Collections> collections =collectProjectService.selectCollectionsByUserID(userId);
        return  collections;
    }

//    根据用户id和产品id取消收藏

    @RequestMapping(value="/CancelCollectProject.action",method = RequestMethod.GET)
    @ResponseBody
    public int CancelCollectProject(int id) {
        int s = collectProjectService.CancleCollectionsByUserID(id);
        return s;
    }
}

