package com.healingpill.dto;

public class OrderDetailVO {
    /*
    order_details_num number not null ,
    order_id varchar2(50) not null ,
    pd_num number not null ,
    cart_stock number not null ,
    primary key (order_details_num)
     */

    private int order_details_num;
    private String order_id;
    private int pd_num;
    private int cart_stock;

    public int getOrder_details_num() {
        return order_details_num;
    }

    public void setOrder_details_num(int order_details_num) {
        this.order_details_num = order_details_num;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
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
}
