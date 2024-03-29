package com.healingpill.dto;

public class OrderDetailDTO {
    private int orderItem_id;
    private String order_id;
    private int pd_num;
    private int order_stock;
    private int pd_price;
    // 테이블에 없는 값
    private String mem_id;

    private String pd_name;

    public String getPd_name() {
        return pd_name;
    }

    public void setPd_name(String pd_name) {
        this.pd_name = pd_name;
    }

    public int getOrderItem_id() {
        return orderItem_id;
    }

    public void setOrderItem_id(int orderItem_id) {
        this.orderItem_id = orderItem_id;
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

    public int getOrder_stock() {
        return order_stock;
    }

    public void setOrder_stock(int order_stock) {
        this.order_stock = order_stock;
    }

    public int getPd_price() {
        return pd_price;
    }

    public void setPd_price(int pd_price) {
        this.pd_price = pd_price;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    @Override
    public String toString() {
        return "OrderDetailDTO{" +
                "orderItem_id=" + orderItem_id +
                ", order_id='" + order_id + '\'' +
                ", pd_num=" + pd_num +
                ", order_stock=" + order_stock +
                ", pd_price=" + pd_price +
                ", mem_id='" + mem_id + '\'' +
                '}';
    }
}
