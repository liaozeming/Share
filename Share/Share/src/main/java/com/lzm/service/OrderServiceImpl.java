package com.lzm.service;

import com.lzm.mapper.OrdersMapper;
import com.lzm.pojo.Account;
import com.lzm.pojo.Orders;
import com.lzm.pojo.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 18- 15:38
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private AccountService accountService;
    @Autowired
    private ProjectService projectService;
    @Autowired
    private OrdersMapper ordersMapper;
    @Override
    public Project selectProjectByUserIDAndProductID(int userid, int id) {
        List<Account> accounts = accountService.selectAccountByUserID(userid);
        Double paymoney = accounts.get(0).getPaymoney();
        Project project=projectService.selectProductById(id);
        project.setAccount(paymoney);
        return project;
    }

    @Override
    public int  createOrder(Orders orders) {
        int insert = ordersMapper.insert(orders);
        return insert;
    }
}
