package com.healingpill.dto;

public class OrderPageItemDTO {
    /*
    orderItem_id number primary key ,
    order_id varchar2(50),
    pd_num number,
    order_stock number not null ,
    order_price number not null ,
    order_discount number not null ,
    savePoint number not null ,
    foreign key (order_id) references order_request(order_id),
    foreign key (pd_num) references PRODUCT(PD_NUM)
     */

    // 뷰로부터 전달받는 값
    private int pd_num;
    private int order_stock;
    // DB에서 가져오는 값
    private String pd_name;
    private int pd_price;
    private double pd_discount;
    // 만들어내는 값
    private int salePrice;
    private int totalPrice;
    private int point;
    private int totalPoint;

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

    public double getPd_discount() {
        return pd_discount;
    }

    public void setPd_discount(double pd_discount) {
        this.pd_discount = pd_discount;
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

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public int getTotalPoint() {
        return totalPoint;
    }

    public void setTotalPoint(int totalPoint) {
        this.totalPoint = totalPoint;
    }

    public void initSaleTotal() {
        this.salePrice = (int)(this.pd_price * (1-this.pd_discount));
        this.totalPrice = this.salePrice * this.order_stock;
        this.point = (int)(Math.floor(salePrice * 0.05));
        this.totalPoint = this.point * this.order_stock;
    }

    @Override
    public String toString() {
        return "OrderPageItemDTO{" +
                "pd_num=" + pd_num +
                ", order_stock=" + order_stock +
                ", pd_name='" + pd_name + '\'' +
                ", pd_price=" + pd_price +
                ", pd_discount=" + pd_discount +
                ", salePrice=" + salePrice +
                ", totalPrice=" + totalPrice +
                ", point=" + point +
                ", totalPoint=" + totalPoint +
                '}';
    }
}
