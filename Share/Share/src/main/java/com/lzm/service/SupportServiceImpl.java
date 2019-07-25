package com.lzm.service;

import com.lzm.mapper.ProjectMapper;
import com.lzm.pojo.Project;
import com.lzm.pojo.ProjectExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
