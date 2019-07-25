package com.lzm.service;

import com.lzm.pojo.Support;

import java.util.List;

public interface SupportService {
    List<Support> selectSupportByTypeAndUser(int userId, int typeId);

    void insertSupportByOrderID(String outTradeNo);

    void UpdateSupportByOrderID(String outTradeNo);
}
