package com.lzm.service;

import com.lzm.mapper.OrdersMapper;
import com.lzm.mapper.ProjectMapper;
import com.lzm.mapper.SupportMapper;
import com.lzm.pojo.Orders;
import com.lzm.pojo.Project;
import com.lzm.pojo.Support;
import com.lzm.pojo.SupportExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 17- 14:06
 */
@Service
public class SupportServiceImpl implements SupportService {
    @Autowired
    private ProjectMapper projectMapper;
    @Autowired
    private SupportMapper supportMapper;
    @Autowired
    private OrdersMapper ordersMapper;
    @Override
    public List<Support> selectSupportByTypeAndUser(int userId, int typeId) {
            SupportExample supportExample=new SupportExample();
            supportExample.or().andUseridEqualTo(userId);
        List<Support> supports = supportMapper.selectByExample(supportExample);

        if (supports.size()>0)
        {
            for (Support support:supports)
            {
                Project project = projectMapper.selectByPrimaryKey(support.getProjectid());
                support.setProject(project);
            }
            return supports;
        }
        return null;
    }

    //根据订单ID跟新support表
    @Override
    public void insertSupportByOrderID(String outTradeNo) {
        Orders orders = ordersMapper.selectByPrimaryKey(outTradeNo);
        Support support1 = supportMapper.selectByPrimaryKey(orders.getId());
        if (support1==null)
        {
            Support support=new Support();
            support.setId(orders.getId());
            support.setUserid(orders.getUserid());
            support.setProjectid(orders.getProjectid());
            support.setMoney(orders.getPaymoney());
            support.setStarttime(new Date());
            support.setIspay(Integer.valueOf(orders.getIspay()));
            support.setInvitecode(orders.getInvitecode());
            supportMapper.insert(support);
        }

    }

    @Override
    public void UpdateSupportByOrderID(String outTradeNo) {
        //根据订单号更新

    }
}
