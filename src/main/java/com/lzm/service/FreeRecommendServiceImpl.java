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
public class FreeRecommendServiceImpl implements FreeRecommendService{
    @Autowired
    private ProjectMapper projectMapper;
    //根据支持人数推荐
    @Override
    public List<Project> selectByNumSup() {
//        SELECT * from project  ORDER BY numsup DESC LIMIT 4  ;
        ProjectExample projectExample = new ProjectExample();
        projectExample.setOrderByClause("numsup desc,id asc limit 4");
        //查询众筹类型未0：公益，审核禁止状态 0：未通过  1：通过 2：待审核
        projectExample.or().andTypeidEqualTo(0).andIsforbidEqualTo("1");

        List<Project> projects=projectMapper.selectByExample(projectExample);
        return projects;
    }
}
