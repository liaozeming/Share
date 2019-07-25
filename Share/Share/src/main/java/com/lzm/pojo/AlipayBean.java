package com.lzm.pojo;

/**
 * @author lzm
 * @create 2019- 07- 19- 9:26
 */
public class AlipayBean {

    /*商户订单号，必填*/
     private String WIDout_trade_no;
 /*订单名称，必填*/
      private String WIDtotal_amount;
 /*付款金额，必填*/
       private StringBuffer WIDsubject;
 /*商品描述，可空*/
     private String WIDbody;
 /*超时时间参数*/
     private String timeout_express="10m";
     private String product_code="FAST_INSTANT_TRADE_PAY";

    public String getWIDout_trade_no() {
        return WIDout_trade_no;
    }

    public void setWIDout_trade_no(String WIDout_trade_no) {
        this.WIDout_trade_no = WIDout_trade_no;
    }

    public String getWIDtotal_amount() {
        return WIDtotal_amount;
    }

    public void setWIDtotal_amount(String WIDtotal_amount) {
        this.WIDtotal_amount = WIDtotal_amount;
    }

    public StringBuffer getWIDsubject() {
        return WIDsubject;
    }

    public void setWIDsubject(StringBuffer WIDsubject) {
        this.WIDsubject = WIDsubject;
    }

    public String getWIDbody() {
        return WIDbody;
    }

    public void setWIDbody(String WIDbody) {
        this.WIDbody = WIDbody;
    }

    public String getTimeout_express() {
        return timeout_express;
    }

    public void setTimeout_express(String timeout_express) {
        this.timeout_express = timeout_express;
    }

    public String getProduct_code() {
        return product_code;
    }

    public void setProduct_code(String product_code) {
        this.product_code = product_code;
    }
}
