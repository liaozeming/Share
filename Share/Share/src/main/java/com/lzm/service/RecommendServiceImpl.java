package com.lzm.service;

import com.lzm.mapper.ProjectMapper;
import com.lzm.pojo.Project;
import com.lzm.pojo.ProjectExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 13- 8:25
 */
@Service
public class RecommendServiceImpl  implements RecommendService{
    @Autowired
    private ProjectMapper projectMapper;

    //热门推荐根据支持人数推荐
    @Override
    public List<Project> selectByNumSup() {

//        SELECT * from project  ORDER BY numsup DESC LIMIT 5  ;
        ProjectExample projectExample = new ProjectExample();
        //审核通过,并且状态不是已完成众筹
        projectExample.or().andIsforbidEqualTo("1").andStatueNotEqualTo("3");
        projectExample.setOrderByClause("numsup desc,id asc limit 5");
        List<Project> projects=projectMapper.selectByExample(projectExample);
        return projects;
    }
}
