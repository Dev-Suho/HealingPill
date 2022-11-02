package com.healingpill.dto;

import java.util.Date;
import java.util.List;

public class OrderDTO {
    private String order_id;
    private String order_name;
    private String mem_id;
    private String mem_address1;
    private String mem_address2;
    private String mem_address3;
    private String orderState;
    private List<OrderDetailDTO> orders;
    private int deliveryCost;
    private int usePoint;
    private Date orderDate;
    // 테이블에 없는 데이터
    private int orderSalePrice;
    private int orderSavePoint;
    private int orderFinalSalePrice;

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getOrder_name() {
        return order_name;
    }

    public void setOrder_name(String order_name) {
        this.order_name = order_name;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
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

    public String getOrderState() {
        return orderState;
    }

    public void setOrderState(String orderState) {
        this.orderState = orderState;
    }

    public List<OrderDetailDTO> getOrders() {
        return orders;
    }

    public void setOrders(List<OrderDetailDTO> orders) {
        this.orders = orders;
    }

    public int getDeliveryCost() {
        return deliveryCost;
    }

    public void setDeliveryCost(int deliveryCost) {
        this.deliveryCost = deliveryCost;
    }

    public int getUsePoint() {
        return usePoint;
    }

    public void setUsePoint(int usePoint) {
        this.usePoint = usePoint;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public int getOrderSalePrice() {
        return orderSalePrice;
    }

    public void setOrderSalePrice(int orderSalePrice) {
        this.orderSalePrice = orderSalePrice;
    }

    public int getOrderSavePoint() {
        return orderSavePoint;
    }

    public void setOrderSavePoint(int orderSavePoint) {
        this.orderSavePoint = orderSavePoint;
    }

    public int getOrderFinalSalePrice() {
        return orderFinalSalePrice;
    }

    public void setOrderFinalSalePrice(int orderFinalSalePrice) {
        this.orderFinalSalePrice = orderFinalSalePrice;
    }

    @Override
    public String toString() {
        return "OrderDTO{" +
                "order_id='" + order_id + '\'' +
                ", order_name='" + order_name + '\'' +
                ", mem_id='" + mem_id + '\'' +
                ", mem_address1='" + mem_address1 + '\'' +
                ", mem_address2='" + mem_address2 + '\'' +
                ", mem_address3='" + mem_address3 + '\'' +
                ", orderState='" + orderState + '\'' +
                ", orders=" + orders +
                ", deliveryCost=" + deliveryCost +
                ", usePoint=" + usePoint +
                ", orderDate=" + orderDate +
                ", orderSalePrice=" + orderSalePrice +
                ", orderSavePoint=" + orderSavePoint +
                ", orderFinalSalePrice=" + orderFinalSalePrice +
                '}';
    }

    public void getOrderPriceInfo() {
        for(OrderDetailDTO order : orders) {
            orderSalePrice += order.getTotalPrice();
            orderSavePoint += order.getTotalSavePoint();
        }
        if(orderSalePrice >= 30000) {
            deliveryCost = 0;
        } else {
            deliveryCost = 3000;
        }
        orderFinalSalePrice = orderSalePrice + deliveryCost - usePoint;
    }
}
