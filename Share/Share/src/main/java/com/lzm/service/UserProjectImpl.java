package com.lzm.service;

import com.lzm.mapper.ProjectMapper;
import com.lzm.pojo.Project;
import com.lzm.pojo.ProjectExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 16- 22:16
 */
@Service
public class UserProjectImpl implements UserProjectService {
    @Autowired
    private ProjectMapper projectMapper;

    @Override
    public List<Project> selectByStatusAndUserID(int userid, String status) {
        ProjectExample projectExample=new ProjectExample();
        List<Project> projects;
        if (!status.equals("0"))
        {
            projectExample.or().andUseridEqualTo(userid).andStatueEqualTo(status);;
             projects = projectMapper.selectByExample(projectExample);
        }else {
            projectExample.or().andUseridEqualTo(userid);
            projects = projectMapper.selectByExample(projectExample);
        }

        return projects;
    }
}
