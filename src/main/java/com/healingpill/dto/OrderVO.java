package com.healingpill.dto;

import java.util.Date;

public class OrderVO {
    /*
    order_id varchar2(50) primary key not null ,
    mem_id varchar2(50) not null ,
    order_rec varchar2(50) not null ,
    mem_address1 varchar2(50) not null ,
    mem_address2 varchar2(50) not null ,
    mem_address3 varchar2(50) not null ,
    order_phone varchar2(30) not null ,
    totalPrice number not null ,
    order_register_datetime DATE default sysdate,
    foreign key (mem_id) references MEMBER(MEM_ID)
     */

    private String order_id;
    private String mem_id;
    private String order_rec;
    private String mem_address1;
    private String mem_address2;
    private String mem_address3;
    private String order_phone;
    private int totalPrice;
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

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public void setOrder_phone(String order_phone) {
        this.order_phone = order_phone;
    }

    public Date getOrder_register_datetime() {
        return order_register_datetime;
    }

    public void setOrder_register_datetime(Date order_register_datetime) {
        this.order_register_datetime = order_register_datetime;
    }
}
