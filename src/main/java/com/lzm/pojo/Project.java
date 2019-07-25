package com.lzm.pojo;

import java.util.Date;

public class Project {
    private Integer id;

    private Integer userid;

    private Integer typeid;

    private Integer kindid;

    private String name;

    private String introduce;

    private String detail;

    private String detailvido;

    private String rule;

    private String image;

    private String imagelist;

    private Double needmoney;

    private Double supmoney;

    private Double backmoney;

    private String backcontent;

    private String backimage;

    private Integer backtime;

    private Double sendmoney;

    private String statue;

    private Date startdate;

    private Date deadline;

    private String isable;

    private String isticket;

    private String isforbid;

    private Integer numsup;

    private Integer numcol;

    private String backtype;

    private String teambrief;

    private String teamdetail;

    private String teamtel;

    //项目截至时间，将获得的String装成Date类型
    private String lasttime;

    //产品剩下的时间
    private int remainday;

    //多图片的字符串转成数组
    private String[] imageUrls;

    private String[] imageBackUrls;

    private Double account;

    private  User user;

    private String typename;

    private String kidename;

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public String getKidename() {
        return kidename;
    }

    public void setKidename(String kidename) {
        this.kidename = kidename;
    }

    public Double getAccount() {
        return account;
    }

    public void setAccount(Double account) {
        this.account = account;
    }

    public String[] getImageBackUrls() {
        return imageBackUrls;
    }

    public void setImageBackUrls(String[] imageBackUrls) {
        this.imageBackUrls = imageBackUrls;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String[] getImageUrls() {
        return imageUrls;
    }

    public void setImageUrls(String[] imageUrls) {
        this.imageUrls = imageUrls;
    }

    public int getRemainday() {
        return remainday;
    }

    public void setRemainday(int remainday) {
        this.remainday = remainday;
    }

    public String getLasttime() {
        return lasttime;
    }

    public void setLasttime(String lasttime) {
        this.lasttime = lasttime;
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

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public Integer getKindid() {
        return kindid;
    }

    public void setKindid(Integer kindid) {
        this.kindid = kindid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }

    public String getDetailvido() {
        return detailvido;
    }

    public void setDetailvido(String detailvido) {
        this.detailvido = detailvido == null ? null : detailvido.trim();
    }

    public String getRule() {
        return rule;
    }

    public void setRule(String rule) {
        this.rule = rule == null ? null : rule.trim();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public String getImagelist() {
        return imagelist;
    }

    public void setImagelist(String imagelist) {
        this.imagelist = imagelist == null ? null : imagelist.trim();
    }

    public Double getNeedmoney() {
        return needmoney;
    }

    public void setNeedmoney(Double needmoney) {
        this.needmoney = needmoney;
    }

    public Double getSupmoney() {
        return supmoney;
    }

    public void setSupmoney(Double supmoney) {
        this.supmoney = supmoney;
    }

    public Double getBackmoney() {
        return backmoney;
    }

    public void setBackmoney(Double backmoney) {
        this.backmoney = backmoney;
    }

    public String getBackcontent() {
        return backcontent;
    }

    public void setBackcontent(String backcontent) {
        this.backcontent = backcontent == null ? null : backcontent.trim();
    }

    public String getBackimage() {
        return backimage;
    }

    public void setBackimage(String backimage) {
        this.backimage = backimage == null ? null : backimage.trim();
    }

    public Integer getBacktime() {
        return backtime;
    }

    public void setBacktime(Integer backtime) {
        this.backtime = backtime;
    }

    public Double getSendmoney() {
        return sendmoney;
    }

    public void setSendmoney(Double sendmoney) {
        this.sendmoney = sendmoney;
    }

    public String getStatue() {
        return statue;
    }

    public void setStatue(String statue) {
        this.statue = statue == null ? null : statue.trim();
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public String getIsable() {
        return isable;
    }

    public void setIsable(String isable) {
        this.isable = isable == null ? null : isable.trim();
    }

    public String getIsticket() {
        return isticket;
    }

    public void setIsticket(String isticket) {
        this.isticket = isticket == null ? null : isticket.trim();
    }

    public String getIsforbid() {
        return isforbid;
    }

    public void setIsforbid(String isforbid) {
        this.isforbid = isforbid == null ? null : isforbid.trim();
    }

    public Integer getNumsup() {
        return numsup;
    }

    public void setNumsup(Integer numsup) {
        this.numsup = numsup;
    }

    public Integer getNumcol() {
        return numcol;
    }

    public void setNumcol(Integer numcol) {
        this.numcol = numcol;
    }

    public String getBacktype() {
        return backtype;
    }

    public void setBacktype(String backtype) {
        this.backtype = backtype == null ? null : backtype.trim();
    }

    public String getTeambrief() {
        return teambrief;
    }

    public void setTeambrief(String teambrief) {
        this.teambrief = teambrief == null ? null : teambrief.trim();
    }

    public String getTeamdetail() {
        return teamdetail;
    }

    public void setTeamdetail(String teamdetail) {
        this.teamdetail = teamdetail == null ? null : teamdetail.trim();
    }

    public String getTeamtel() {
        return teamtel;
    }

    public void setTeamtel(String teamtel) {
        this.teamtel = teamtel == null ? null : teamtel.trim();
    }

    @Override
    public String toString() {
        return "Project{" +
                "id=" + id +
                ", userid=" + userid +
                ", typeid=" + typeid +
                ", kindid=" + kindid +
                ", name='" + name + '\'' +
                ", introduce='" + introduce + '\'' +
                ", detail='" + detail + '\'' +
                ", detailvido='" + detailvido + '\'' +
                ", rule='" + rule + '\'' +
                ", image='" + image + '\'' +
                ", imagelist='" + imagelist + '\'' +
                ", needmoney=" + needmoney +
                ", supmoney=" + supmoney +
                ", backmoney=" + backmoney +
                ", backcontent='" + backcontent + '\'' +
                ", backimage='" + backimage + '\'' +
                ", backtime=" + backtime +
                ", sendmoney=" + sendmoney +
                ", statue='" + statue + '\'' +
                ", startdate=" + startdate +
                ", deadline=" + deadline +
                ", isable='" + isable + '\'' +
                ", isticket='" + isticket + '\'' +
                ", isforbid='" + isforbid + '\'' +
                ", numsup=" + numsup +
                ", numcol=" + numcol +
                ", backtype='" + backtype + '\'' +
                ", teambrief='" + teambrief + '\'' +
                ", teamdetail='" + teamdetail + '\'' +
                ", teamtel='" + teamtel + '\'' +
                ", lasttime='" + lasttime + '\'' +
                '}';
    }
}