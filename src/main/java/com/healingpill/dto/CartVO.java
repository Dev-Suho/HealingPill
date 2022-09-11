package com.healingpill.dto;

import java.util.Date;

public class CartVO {
    /*
        cart_id number primary key ,
    mem_id varchar2(50),
    pd_num number,
    cart_stock number,
    foreign key (mem_id) references MEMBER(MEM_ID),
    foreign key (pd_num) references PRODUCT(PD_NUM)
     */

    private int cart_id;
    private String mem_id;
    private int pd_num;
    private int cart_stock;
    private String pd_name;
    private int pd_price;

    private Date cart_register_datetime;

    public Date getCart_register_datetime() {
        return cart_register_datetime;
    }

    public void setCart_register_datetime(Date cart_register_datetime) {
        this.cart_register_datetime = cart_register_datetime;
    }

    public int getCart_id() {
        return cart_id;
    }

    public void setCart_id(int cart_id) {
        this.cart_id = cart_id;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public int getPd_num() {
        return pd_num;
    }

    public void setPd_num(int pd_num) {
        this.pd_num = pd_num;
    }

    public int getCart_stock() {
        return cart_stock;
    }

    public void setCart_stock(int cart_stock) {
        this.cart_stock = cart_stock;
    }

    public String getPd_name() {
        return pd_name;
    }

    public void setPd_name(String pd_name) {
        this.pd_name = pd_name;
    }

    public int getPd_price() {
        return pd_price;
    }

    public void setPd_price(int pd_price) {
        this.pd_price = pd_price;
    }


    @Override
    public String toString() {
        return "CartVO{" +
                "cart_id=" + cart_id +
                ", mem_id='" + mem_id + '\'' +
                ", pd_num=" + pd_num +
                ", cart_stock=" + cart_stock +
                ", pd_name='" + pd_name + '\'' +
                ", pd_price=" + pd_price +
                ", totalPrice=" +
                '}';
    }
}
