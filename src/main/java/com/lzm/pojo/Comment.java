package com.lzm.pojo;

import java.util.Arrays;
import java.util.Date;

public class Comment {
    private Integer id;

    private Integer userid;

    private Integer projectid;

    private String content;

    private String type;

    private Date starttime;

    private String images;

    private String[] imageUrls;

    private    String fname;

    private String headimg;

    public String getHeadimg() {
        return headimg;
    }

    public void setHeadimg(String headimg) {
        this.headimg = headimg;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String[] getImageUrls() {
        return imageUrls;
    }

    public void setImageUrls(String[] imageUrls) {
        this.imageUrls = imageUrls;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getProjectid() {
        return projectid;
    }

    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images == null ? null : images.trim();
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", userid=" + userid +
                ", projectid=" + projectid +
                ", content='" + content + '\'' +
                ", type='" + type + '\'' +
                ", starttime=" + starttime +
                ", images='" + images + '\'' +
                ", imageUrls=" + Arrays.toString(imageUrls) +
                ", fname='" + fname + '\'' +
                '}';
    }
}