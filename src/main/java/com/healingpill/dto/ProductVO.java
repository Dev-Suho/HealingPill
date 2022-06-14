package com.healingpill.dto;

public class ProductVO {
    private String pd_name;
    private String ctg_code;
    private int pd_price;
    private int pd_stock;
    private String pd_content;
    private String pd_mainImage;
    private String pd_subImage;

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
}
