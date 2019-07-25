package com.lzm.service;

import com.lzm.pojo.Orders;
import com.lzm.pojo.Project;

public interface OrderService {
    Project selectProjectByUserIDAndProductID(int userid, int id);

    int  createOrder(Orders orders);
}
