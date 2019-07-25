package com.lzm.pojo;

public class Address {
    private Integer id;

    private Integer userid;

    private String consignee;

    private String telephone;

    private String postcard;

    private String detailaddress;

    private Integer provinceid;

    private Integer cityid;

    private Integer streetid;

    private String isdefault;

    private String provincename;

    private String cityname;

    private String streetnam;

    public String getProvincename() {
        return provincename;
    }

    public void setProvincename(String provincename) {
        this.provincename = provincename;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public String getStreetnam() {
        return streetnam;
    }

    public void setStreetnam(String streetnam) {
        this.streetnam = streetnam;
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

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee == null ? null : consignee.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getPostcard() {
        return postcard;
    }

    public void setPostcard(String postcard) {
        this.postcard = postcard == null ? null : postcard.trim();
    }

    public String getDetailaddress() {
        return detailaddress;
    }

    public void setDetailaddress(String detailaddress) {
        this.detailaddress = detailaddress == null ? null : detailaddress.trim();
    }

    public Integer getProvinceid() {
        return provinceid;
    }

    public void setProvinceid(Integer provinceid) {
        this.provinceid = provinceid;
    }

    public Integer getCityid() {
        return cityid;
    }

    public void setCityid(Integer cityid) {
        this.cityid = cityid;
    }

    public Integer getStreetid() {
        return streetid;
    }

    public void setStreetid(Integer streetid) {
        this.streetid = streetid;
    }

    public String getIsdefault() {
        return isdefault;
    }

    public void setIsdefault(String isdefault) {
        this.isdefault = isdefault == null ? null : isdefault.trim();
    }
}