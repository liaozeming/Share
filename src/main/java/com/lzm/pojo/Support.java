package com.lzm.pojo;

import java.util.Date;

public class Support {
    private String id;

    private Integer userid;

    private Integer projectid;

    private Double money;

    private Date starttime;

    private Integer ispay;

    private Integer tryout;

    private Integer iswin;

    private String invitecode;

    private Project project;

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
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

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Integer getIspay() {
        return ispay;
    }

    public void setIspay(Integer ispay) {
        this.ispay = ispay;
    }

    public Integer getTryout() {
        return tryout;
    }

    public void setTryout(Integer tryout) {
        this.tryout = tryout;
    }

    public Integer getIswin() {
        return iswin;
    }

    public void setIswin(Integer iswin) {
        this.iswin = iswin;
    }

    public String getInvitecode() {
        return invitecode;
    }

    public void setInvitecode(String invitecode) {
        this.invitecode = invitecode == null ? null : invitecode.trim();
    }
}