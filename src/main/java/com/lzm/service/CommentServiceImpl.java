package com.lzm.service;

import com.lzm.mapper.CommentMapper;
import com.lzm.mapper.ProjectMapper;
import com.lzm.pojo.Comment;
import com.lzm.pojo.CommentExample;
import com.lzm.pojo.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 20- 22:46
 */
@Service
public class CommentServiceImpl implements  CommentService {
    @Autowired
    private CommentMapper commentMapper;
    @Autowired
    private ProjectMapper projectMapper;
    @Override
    public void insertComment(int userId, Comment comment) {
        String type = null;
        new Comment();
        comment.setUserid(userId);
        comment.setProjectid(comment.getProjectid());
        comment.setContent(comment.getContent());
        Project project = projectMapper.selectByPrimaryKey(comment.getProjectid());
        if (project.getTypeid()==0)
        {
            type="公益众筹";
        }else if (project.getTypeid()==1)
        {
            type="普通众筹";
        }
        comment.setType(type);
        comment.setImages(comment.getImages());
        comment.setStarttime(new Date());
        commentMapper.insert(comment);
    }

    @Override
    public List<Comment> selectByProductId(int id) {
        CommentExample commentExample=new CommentExample();
        commentExample.or().andProjectidEqualTo(id);
        List<Comment> comments = commentMapper.selectByExample(commentExample);
        return comments;
    }
}
