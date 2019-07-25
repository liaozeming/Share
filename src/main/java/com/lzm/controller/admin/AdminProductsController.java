package com.lzm.controller.admin;

import com.lzm.pojo.Project;
import com.lzm.service.ProjectService;
import com.lzm.utils.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 23- 14:40
 */
@Controller
public class AdminProductsController {
    @Autowired
    private ProjectService projectService;

    @RequestMapping(value="/ShowAllProducts.action",method = RequestMethod.GET)
    @ResponseBody
    public PageResult<List<Project>>   ShowAllProducts(@RequestParam(value = "page") int page , int limit) {
        List<Project> projects=projectService.AdminListProjectByPageAndLimit(page,limit);
        //返回的总记录数
        int count=projectService.AdminfindProjectPageCount();
        PageResult<List<Project>> listPageResult=new PageResult<List<Project>>("",projects,0,count);
        return listPageResult;
    }

    @RequestMapping(value="/deleteProject.action",method = RequestMethod.GET)
    @ResponseBody
    public int  deleteProject(int id) {
        int i=projectService.deleteProjectByID(id);
        return i;
    }

    @RequestMapping(value="/selectProductByName.action",method = RequestMethod.GET)
    @ResponseBody
    public PageResult<List<Project>>  selectProductByName(String name, int page, int limit) {

        List<Project> projects=projectService.selectProductLikeName(name,page,limit);
        //返回的总记录数
        int count=projectService.selectProductLikeNameSize(name);
        PageResult<List<Project>> listPageResult=new PageResult<List<Project>>("",projects,0,count);
        return listPageResult;
    }

}
