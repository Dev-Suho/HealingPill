package com.healingpill.dto;

import java.util.Date;
import java.util.List;

//ORDER_REQUEST DB
public class OrderDTO {
    private String order_id;
    private String order_name;
    private String mem_id;
    private String mem_address1;
    private String mem_address2;
    private String mem_address3;
    private String order_phone;
    private String order_State;
    private int deliveryCost;
    private double usePoint;

    private Date order_register_datetime;

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

    public String getOrder_phone() {
        return order_phone;
    }

    public void setOrder_phone(String order_phone) {
        this.order_phone = order_phone;
    }

    public String getOrder_State() {
        return order_State;
    }

    public void setOrder_State(String order_State) {
        this.order_State = order_State;
    }

    public Date getOrder_register_datetime() {
        return order_register_datetime;
    }

    public void setOrder_register_datetime(Date order_register_datetime) {
        this.order_register_datetime = order_register_datetime;
    }

    public int getDeliveryCost() {
        return deliveryCost;
    }

    public void setDeliveryCost(int deliveryCost) {
        this.deliveryCost = deliveryCost;
    }

    public double getUsePoint() {
        return usePoint;
    }

    public void setUsePoint(double usePoint) {
        this.usePoint = usePoint;
    }


}
