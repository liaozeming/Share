package com.lzm.controller;

import com.lzm.pojo.Project;
import com.lzm.pojo.User;
import com.lzm.service.ProjectService;
import com.lzm.service.UserService;
import com.lzm.utils.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 12- 11:38
 */
@Controller
public class ProjectController {
    @Autowired
    private ProjectService projectService;
    @Autowired
    private UserService userService;


    //根据购买人数进行推荐,轮播图显示，显示前5个
    @ResponseBody
    @RequestMapping(value="AddProject.action",method= RequestMethod.POST)
    public String AddProject(@RequestBody Project project)
    {

        System.out.println(project.toString());
       int i = projectService.addProject(project);
        return "1";

    }


    //显示全部的热门产品，使用layui流加载
    @RequestMapping(value="/HotProjects.action")
    @ResponseBody
    public PageResult<List<Project>> HotProjects(int page , int limit) {

        //会自动传入limit和page
        System.out.println("11111111111111111111111111111111111111111111111111");
        System.out.println(page);
        System.out.println(limit);
//     分页查询，需要参数code（要为0，不然数据表格数据显示不出）,msg（返回的消息），data(表格显示的数据)，totals(查询到数据的总记录数)，
        List<Project> projectList = projectService.listProjectByPageAndLimit(page, limit);
        System.out.printf(projectList.toString());
        //返回的总记录数
        int count = projectService.findProjectPageCount();
        PageResult<List<Project>> listPageResult = new PageResult<List<Project>>("", projectList, 0, count);
        return listPageResult;
    }


    //产品细节
    @RequestMapping(value="/ShowProjectDetail.action",method =RequestMethod.GET)
    @ResponseBody
    public Project HotProjects(int id) {

//    根据id查询产品并返回
        Project project = projectService.selectProductById(id);
        if (project!=null)
        {
            //获取多张图片路径
            String[] urls = project.getImagelist().split(",");
            String[] backurls = project.getBackimage().split(",");
//            for (int i = 0; i < urls.length; i++) {
//                System.out.println("图片名称："+urls[i]);
//            }
            User user = userService.seleUserById(project.getUserid());
            project.setUser(user);
            project.setImageUrls(urls);
            project.setImageBackUrls(backurls);
            return project;
        }else
        return null;
    }

}
