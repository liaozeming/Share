package com.lzm.service;

import com.lzm.pojo.Project;

import java.util.List;

public interface SupportService {
    List<Support> selectSupportByTypeAndUser(int userId, int typeId);
}
