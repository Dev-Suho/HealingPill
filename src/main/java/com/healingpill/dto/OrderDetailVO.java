package com.healingpill.dto;

public class OrderDetailVO {
    /*
    orderDetails_num number primary key not null ,
    order_id varchar2(50) not null ,
    pd_num number not null ,
    cart_stock number not null,
    foreign key (order_id) references order_request (order_id)
     */

    private int orderDetails_num;
    private String order_id;
    private int pd_num;
    private int cart_stock;

    public int getOrderDetails_num() {
        return orderDetails_num;
    }

    public void setOrderDetails_num(int orderDetails_num) {
        this.orderDetails_num = orderDetails_num;
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
