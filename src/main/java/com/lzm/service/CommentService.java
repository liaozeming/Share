package com.lzm.service;

import com.lzm.pojo.Comment;

import java.util.List;

public interface CommentService {
    void insertComment(int userId, Comment comment);

    List<Comment> selectByProductId(int id);
}
