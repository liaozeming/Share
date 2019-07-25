package com.lzm.controller;

import com.lzm.pojo.Comment;
import com.lzm.pojo.User;
import com.lzm.service.CommentService;
import com.lzm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 20- 22:44
 */
@Controller
public class CommentController {
    @Autowired
    private CommentService commentService;
    @Autowired
    private UserService userService;

    @RequestMapping(value="/AddComment.action",method = RequestMethod.POST)
    @ResponseBody
    public void AddComment(HttpSession session, @RequestBody Comment comment) {
        User user = (User) session.getAttribute("user");
        int userId = user.getId();
        commentService.insertComment(userId,comment);

    }

    //根据产品id获取评论
    @RequestMapping(value="/ShowComments.action",method = RequestMethod.GET)
    @ResponseBody
    public List<Comment> projectsShowComments(int id) {
      List<Comment> comments=commentService.selectByProductId(id);
      for (Comment comment:comments)
      {
          User user = userService.seleUserById(comment.getUserid());
          comment.setFname(user.getFname());
          comment.setHeadimg(user.getHeadimg());
          //获取多张图片路径
          String[] urls = comment.getImages().split(",");
          comment.setImageUrls(urls);
      }
        System.out.println(comments.toString());
             return comments;
    }
}
