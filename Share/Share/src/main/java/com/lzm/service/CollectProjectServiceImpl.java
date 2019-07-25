package com.lzm.service;

import com.lzm.mapper.CollectionsMapper;
import com.lzm.mapper.ProjectMapper;
import com.lzm.pojo.Collections;
import com.lzm.pojo.CollectionsExample;
import com.lzm.pojo.Project;
import com.lzm.pojo.ProjectExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 17- 10:15
 */
@Service
public class CollectProjectServiceImpl implements  CollectProjectService {
    @Autowired
    private CollectionsMapper collectionsMapper;
    @Autowired
    private ProjectMapper projectMapper;
    @Override
    public int insertCollect(int userId, int id) {
        Collections collections = new Collections();
        collections.setUserid(userId);
        collections.setProjectid(id);
        collections.setStarttime(new Date(System.currentTimeMillis()));
        CollectionsExample collectionsExample=new CollectionsExample();
        collectionsExample.or().andUseridEqualTo(userId).andProjectidEqualTo(id);
        List<Collections> collections1 = collectionsMapper.selectByExample(collectionsExample);
        if (collections1.size()!=0)
        {
            //已收藏
            return 2;
        }else {
            collectionsMapper.insert(collections);
            return 1;
        }

    }

    @Override
    public List<Collections> selectCollectionsByUserID(int userId) {
        CollectionsExample collectionsExample=new CollectionsExample();
        collectionsExample.or().andUseridEqualTo(userId);
        List<Collections> collections = collectionsMapper.selectByExample(collectionsExample);
        for (Collections collections1:collections)
        {
            Project project = projectMapper.selectByPrimaryKey(collections1.getProjectid());
            collections1.setProject(project);
        }
        return collections;
    }

    @Override
    public int CancleCollectionsByUserID(int collectionID) {

        collectionsMapper.deleteByPrimaryKey(collectionID);
        return 1;
    }
}
