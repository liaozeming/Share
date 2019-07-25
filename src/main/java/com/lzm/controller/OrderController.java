package com.lzm.controller;

import com.lzm.pojo.Orders;
import com.lzm.pojo.Project;
import com.lzm.pojo.User;
import com.lzm.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * @author lzm
 * @create 2019- 07- 18- 15:37
 */
@Controller
public class OrderController {
@Autowired
private OrderService orderService;


    @ResponseBody
    @RequestMapping(value="showOrderProject.action",method= RequestMethod.GET)
    public Project AddProject(HttpSession session,int id)
    {
       User user= (User) session.getAttribute("user");
       int userid=user.getId();
        Project project = orderService.selectProjectByUserIDAndProductID(userid, id);
        return project;

    }

    @ResponseBody
    @RequestMapping(value="CreateOrder.action",method= RequestMethod.POST)
    public int  AddProject(@RequestBody Orders orders)
    {
        orders.setIspay("0");
     int orderId=orderService.createOrder(orders);
       return orderId;
    }

}
