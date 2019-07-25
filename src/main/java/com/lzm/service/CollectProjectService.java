package com.lzm.service;

import com.lzm.pojo.Collections;

import java.util.List;

public interface CollectProjectService {
    int insertCollect(int userId, int id);

    List<Collections> selectCollectionsByUserID(int userId);

    int CancleCollectionsByUserID(int collectionID);
}
