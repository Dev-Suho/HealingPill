package com.healingpill.dto;

import java.util.Date;

public class CartListVO {
    private int cart_id;
    private String mem_id;
    private int pd_num;
    private int cart_stock;
    private Date cart_register_datetime;

    private int num;
    private String pd_name;
    private int pd_price;
    private String pd_subImage;

    public String getCtg_name() {
        return ctg_name;
    }

    public void setCtg_name(String ctg_name) {
        this.ctg_name = ctg_name;
    }

    private String ctg_name;

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

    public Date getCart_register_datetime() {
        return cart_register_datetime;
    }

    public void setCart_register_datetime(Date cart_register_datetime) {
        this.cart_register_datetime = cart_register_datetime;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
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

    public String getPd_subImage() {
        return pd_subImage;
    }

    public void setPd_subImage(String pd_subImage) {
        this.pd_subImage = pd_subImage;
    }
}
