package com.lzm.utils;

/**
 * @author lzm
 * @create 2019- 06- 05- 9:25
 */
public class PageResult<T> {

    private String msg;
    //返回的数据
    private  T data;
    private  int code;
    //总记录数
    private  int count;


    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public PageResult(String msg, T data, int code, int count) {
        this.msg = msg;
        this.data = data;
        this.code = code;
        this.count = count;
    }
}
