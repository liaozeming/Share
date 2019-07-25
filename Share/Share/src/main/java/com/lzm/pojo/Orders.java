package com.lzm.pojo;

public class Orders {
    private Integer id;

    private Integer userid;

    private Integer addressid;

    private Integer projectid;

    private String paytype;

    private Integer paymoney;

    private String ispay;

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

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }

    public Integer getProjectid() {
        return projectid;
    }

    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }

    public String getPaytype() {
        return paytype;
    }

    public void setPaytype(String paytype) {
        this.paytype = paytype == null ? null : paytype.trim();
    }

    public Integer getPaymoney() {
        return paymoney;
    }

    public void setPaymoney(Integer paymoney) {
        this.paymoney = paymoney;
    }

    public String getIspay() {
        return ispay;
    }

    public void setIspay(String ispay) {
        this.ispay = ispay == null ? null : ispay.trim();
    }
}