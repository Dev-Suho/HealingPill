package com.healingpill.dto;

import java.util.Date;

public class OrderVO {
    /*
     order_id varchar2(50) not null ,
    mem_id varchar2(50) not null ,
    order_rec varchar2(50) not null ,
    mem_address1 varchar2(50) not null , (우편번호)
    mem_address2 varchar2(50) not null , (주소)
    mem_address3 varchar2(50) not null , (상세주소)
    order_phone varchar2(30) not null ,
    order_price number not null ,
    order_register_datetime date default sysdate,
    primary key (order_id)
     */

    private String order_id;
    private String mem_id;
    private String order_rec;
    private String mem_address1;
    private String mem_address2;
    private String mem_address3;
    private String order_phone;
    private int order_price;
    private Date order_register_datetime;

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public String getOrder_rec() {
        return order_rec;
    }

    public void setOrder_rec(String order_rec) {
        this.order_rec = order_rec;
    }

    public String getMem_address1() {
        return mem_address1;
    }

    public void setMem_address1(String mem_address1) {
        this.mem_address1 = mem_address1;
    }

    public String getMem_address2() {
        return mem_address2;
    }

    public void setMem_address2(String mem_address2) {
        this.mem_address2 = mem_address2;
    }

    public String getMem_address3() {
        return mem_address3;
    }

    public void setMem_address3(String mem_address3) {
        this.mem_address3 = mem_address3;
    }

    public String getOrder_phone() {
        return order_phone;
    }

    public void setOrder_phone(String order_phone) {
        this.order_phone = order_phone;
    }

    public int getOrder_price() {
        return order_price;
    }

    public void setOrder_price(int order_price) {
        this.order_price = order_price;
    }

    public Date getOrder_register_datetime() {
        return order_register_datetime;
    }

    public void setOrder_register_datetime(Date order_register_datetime) {
        this.order_register_datetime = order_register_datetime;
    }
}
