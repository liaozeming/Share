package com.lzm.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author lzm
 * @create 2019- 07- 22- 9:34
 */
@Controller
public class AdminDispatherController {
    //后台登陆页面
    @RequestMapping(value="/ToAdminlogin.action",method = RequestMethod.GET)
    public String ToUserProject()
    {

        return "admin/login";
    }

    //后台登陆页面
    @RequestMapping(value="/ToAdminIndex.action",method = RequestMethod.GET)
    public String ToAdminIndex()
    {

        return "admin/index";
    }

    //到用户管理界面
    @RequestMapping(value="/ToManageUser.action",method = RequestMethod.GET)
    public String ToManageUser()
    {

        return "admin/UserManage";
    }

    //到增加用户界面
    @RequestMapping(value="/ToAddUser.action",method = RequestMethod.GET)
    public String ToAddUser()
    {

        return "admin/addUser";
    }

    //到增加用户界面
    @RequestMapping(value="/ToManageProject.action",method = RequestMethod.GET)
    public String ToManageProject()
    {

        return "admin/ProductManage";
    }

    //到待审核商品界面
    @RequestMapping(value="/ToCheckProject.action",method = RequestMethod.GET)
    public String ToCheckProject()
    {

        return "admin/ProjectWaitCheck";
    }


}
