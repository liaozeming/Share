package com.lzm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author lzm
 * @create 2019- 07- 11- 21:44
 */
@Controller
public class MainController {

    //    跳转到登陆后主界面
    @RequestMapping(value="/ToMain.action",method = RequestMethod.GET)
    public String ToLogin( )
    {
        return "client/main";
    }
}
