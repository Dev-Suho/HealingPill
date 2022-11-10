package com.healingpill.dto;

public class OrderDetailDTO {
    private int orderItem_id;
    private String order_id;
    private int pd_num;
    private int order_stock;
    private int totalPrice;
    private int savePoint;
    // 테이블에 없는 값
    private String mem_id;

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

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getSavePoint() {
        return savePoint;
    }

    public void setSavePoint(int savePoint) {
        this.savePoint = savePoint;
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
                ", totalPrice=" + totalPrice +
                ", savePoint=" + savePoint +
                ", mem_id='" + mem_id + '\'' +
                '}';
    }
}
