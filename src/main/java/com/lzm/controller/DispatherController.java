package com.lzm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * @author lzm
 * @create 2019- 07- 12- 13:53
 */
@Controller
public class DispatherController {

    //    跳转到承诺书界面
    @RequestMapping(value="/ToContract.action",method = RequestMethod.GET)
    public String ToContract( )
    {
        return "client/contract";
    }


    //跳转到发起项目界面
    @RequestMapping(value="/ToDeproj.action",method = RequestMethod.GET)
    public String ToDeproj( )
    {
        return "client/deproj";
    }

    //跳转到发起项目界面
    @RequestMapping(value="/ToVieProducts.action",method = RequestMethod.GET)
    public String ToVieProducts( )
    {
        return "client/scanproj";
    }

    //跳转到帮助界面
    @RequestMapping(value="/ToHelp.action",method = RequestMethod.GET)
    public String ToHelp( )
    {
        return "client/help";
    }

    //    跳转到注册用户界面
    @RequestMapping(value="/ToRegister_login.action",method = RequestMethod.GET)
    public String ToRegister( )
    {
        return "client/register";
    }

    //    跳转到用户登陆界面
    @RequestMapping(value="/To_login.action",method = RequestMethod.GET)
    public String ToLogin( )
    {
        return "client/index";
    }


    //    跳转到忘记密码界面
    @RequestMapping(value="/To_forgetlogin.action",method = RequestMethod.GET)
    public String forgetlogin( )
    {
        return "client/forgetpassword";
    }


    //    跳转到用户界面
    @RequestMapping(value="/ToUser.action",method = RequestMethod.GET)
    public String ToUser()
    {
        return "client/user";
    }


    //注销用户
    @RequestMapping(value="/LoginOut.action",method = RequestMethod.GET)
    public String LoginOut( HttpSession session)
    {
        session.setAttribute("user",null);
//        session.invalidate();
        return "redirect:To_login.action";

    }

    //    跳转到产品细节界面
    //入参，产品id,返回产品内容并且跳转到产品细节界面
    @RequestMapping(value="/ToProductDetail.action",method = RequestMethod.GET)
    public String ToProductDetail(Model model, int id)
    {
        model.addAttribute("id",id);
        return "client/projectdetail";
    }

//收获地址
    @RequestMapping(value="/ToUserAddress.action",method = RequestMethod.GET)
    public String ToUserAddress( )
    {
        return "client/user-address";
    }

    //账户余额
    @RequestMapping(value="/ToUserAccount.action",method = RequestMethod.GET)
    public String UserAccount( HttpSession session)
    {
        return "client/user-account";
    }

    //我的项目
    @RequestMapping(value="/ToUserProject.action",method = RequestMethod.GET)
    public String ToUserProject( HttpSession session)
    {
        return "client/user-project";
    }

    //我的收益
    @RequestMapping(value="/ToUserProfit.action",method = RequestMethod.GET)
    public String ToUserProfit( HttpSession session)
    {
        return "client/user-profit";
    }


    //我的支持
    @RequestMapping(value="/ToUserSup.action",method = RequestMethod.GET)
    public String ToUserSup( HttpSession session)
    {
        return "client/user-support";
    }


    //我的收藏
    @RequestMapping(value="/ToUserCol.action",method = RequestMethod.GET)
    public String ToUserCol( HttpSession session)
    {
        return "client/user-collect";
    }


    //订单
    @RequestMapping(value="/ToOrder.action",method = RequestMethod.GET)
    public String ToOrder(Model model,int id)
    {
        model.addAttribute("id",id);
        return "client/placeorder";
    }


    //沙盒环境测试

    @RequestMapping(value="/ToTestIndex.action")
    public String ToTestIndex()
    {
        return "test/index";
    }

//    @RequestMapping(value="/ToPay.action",method = RequestMethod.POST)
//    public String ToPay()
//    {
//        return "test/alipay.trade.page.pay";
//    }


    @RequestMapping(value="/ToReturnUrl.action",method = RequestMethod.GET)
    public String returnurl()
    {
        return "test/return_url";
    }

    @RequestMapping(value="/ToNotifyUrl.action",method = RequestMethod.GET)
    public String notifyUrl()
    {
        return "test/notify_url";
    }
}
