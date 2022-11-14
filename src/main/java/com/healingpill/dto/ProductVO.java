package com.healingpill.dto;

import java.util.Date;

public class ProductVO {
    private int pd_num;
    private String pd_name;
    private String ctg_code;
    private int pd_price;
    private int pd_stock;
    private String pd_content;
    private String pd_mainImage;
    private String pd_subImage;
    private Date pd_register_datetime;
    private int pd_order_quantity;

    public int getPd_num() {
        return pd_num;
    }

    public void setPd_num(int pd_num) {
        this.pd_num = pd_num;
    }

    public Date getPd_register_datetime() {
        return pd_register_datetime;
    }

    public void setPd_register_datetime(Date pd_register_datetime) {
        this.pd_register_datetime = pd_register_datetime;
    }

    public String getPd_name() {
        return pd_name;
    }

    public void setPd_name(String pd_name) {
        this.pd_name = pd_name;
    }

    public String getCtg_code() {
        return ctg_code;
    }

    public void setCtg_code(String ctg_code) {
        this.ctg_code = ctg_code;
    }

    public int getPd_price() {
        return pd_price;
    }

    public void setPd_price(int pd_price) {
        this.pd_price = pd_price;
    }

    public int getPd_stock() {
        return pd_stock;
    }

    public void setPd_stock(int pd_stock) {
        this.pd_stock = pd_stock;
    }

    public String getPd_content() {
        return pd_content;
    }

    public void setPd_content(String pd_content) {
        this.pd_content = pd_content;
    }

    public String getPd_mainImage() {
        return pd_mainImage;
    }

    public void setPd_mainImage(String pd_mainImage) {
        this.pd_mainImage = pd_mainImage;
    }

    public String getPd_subImage() {
        return pd_subImage;
    }

    public void setPd_subImage(String pd_subImage) {
        this.pd_subImage = pd_subImage;
    }

    public int getPd_order_quantity() {
        return pd_order_quantity;
    }

    public void setPd_order_quantity(int pd_order_quantity) {
        this.pd_order_quantity = pd_order_quantity;
    }
}
