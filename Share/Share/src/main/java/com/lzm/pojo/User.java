package com.lzm.pojo;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import java.util.Date;

//类无前台传来的字段就忽略这个字段
@JsonIgnoreProperties(ignoreUnknown = true)
public class User {
    private Integer id;

    private String fname;

    private String phone;

    private String email;

    private String password;

    private Date rtime;

    private String isadmin;

    private String isforbid;

    private String isable;

    private String name;

    private String idcard;

    private String headimg;

    private String introduce;

    private  String phonecheck;

    public String getPhonecheck() {
        return phonecheck;
    }

    public void setPhonecheck(String phonecheck) {
        this.phonecheck = phonecheck;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname == null ? null : fname.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Date getRtime() {
        return rtime;
    }

    public void setRtime(Date rtime) {
        this.rtime = rtime;
    }

    public String getIsadmin() {
        return isadmin;
    }

    public void setIsadmin(String isadmin) {
        this.isadmin = isadmin == null ? null : isadmin.trim();
    }

    public String getIsforbid() {
        return isforbid;
    }

    public void setIsforbid(String isforbid) {
        this.isforbid = isforbid == null ? null : isforbid.trim();
    }

    public String getIsable() {
        return isable;
    }

    public void setIsable(String isable) {
        this.isable = isable == null ? null : isable.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard == null ? null : idcard.trim();
    }

    public String getHeadimg() {
        return headimg;
    }

    public void setHeadimg(String headimg) {
        this.headimg = headimg == null ? null : headimg.trim();
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", fname='" + fname + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", rtime=" + rtime +
                ", isadmin='" + isadmin + '\'' +
                ", isforbid='" + isforbid + '\'' +
                ", isable='" + isable + '\'' +
                ", name='" + name + '\'' +
                ", idcard='" + idcard + '\'' +
                ", headimg='" + headimg + '\'' +
                ", introduce='" + introduce + '\'' +
                '}';
    }

    public User() {
    }

    public User(Integer id, String fname, String phone, String email, String password, Date rtime, String isadmin, String isforbid, String isable, String name, String idcard, String headimg, String introduce) {
        this.id = id;
        this.fname = fname;
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.rtime = rtime;
        this.isadmin = isadmin;
        this.isforbid = isforbid;
        this.isable = isable;
        this.name = name;
        this.idcard = idcard;
        this.headimg = headimg;
        this.introduce = introduce;
    }


}