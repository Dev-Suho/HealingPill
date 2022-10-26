package com.healingpill.dto;

public class OrderItemDTO {
    private String order_id;
    private int pd_num;
    private int order_stock;
    private int orderItem_id;
    private int pd_price;
    private double pd_discount;
    private int savePoint;
    // 테이블에 없는 데이터
    private int salePrice;
    private int totalPrice;
    private int totalSavePoint;

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

    public int getOrderItem_id() {
        return orderItem_id;
    }

    public void setOrderItem_id(int orderItem_id) {
        this.orderItem_id = orderItem_id;
    }

    public int getPd_price() {
        return pd_price;
    }

    public void setPd_price(int pd_price) {
        this.pd_price = pd_price;
    }

    public double getPd_discount() {
        return pd_discount;
    }

    public void setPd_discount(double pd_discount) {
        this.pd_discount = pd_discount;
    }

    public int getSavePoint() {
        return savePoint;
    }

    public void setSavePoint(int savePoint) {
        this.savePoint = savePoint;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getTotalSavePoint() {
        return totalSavePoint;
    }

    public void setTotalSavePoint(int totalSavePoint) {
        this.totalSavePoint = totalSavePoint;
    }

    @Override
    public String toString() {
        return "OrderItemDTO{" +
                "order_id='" + order_id + '\'' +
                ", pd_num=" + pd_num +
                ", order_stock=" + order_stock +
                ", orderItem_id=" + orderItem_id +
                ", pd_price=" + pd_price +
                ", pd_discount=" + pd_discount +
                ", savePoint=" + savePoint +
                ", salePrice=" + salePrice +
                ", totalPrice=" + totalPrice +
                ", totalSavePoint=" + totalSavePoint +
                '}';
    }

    public void initSaleTotal() {
        this.salePrice = (int)(this.pd_price * (1 - this.pd_discount));
        this.totalPrice = this.salePrice * this.order_stock;
        this.savePoint = (int)(Math.floor(this.salePrice*0.05));
        this.totalSavePoint = this.savePoint * this.order_stock;
    }
}
