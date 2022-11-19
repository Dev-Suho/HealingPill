package com.healingpill.dto;

import java.util.Date;

public class RecommendDTO {

    private int ctg_level;
    private String ctg_name;
    private int ctg_code;
    private int ctg_codeRef;
    private Date rc_register_datetime;

    // 상품 테이블
    private int pd_num;
    private String pd_name;
    private int pd_price;
    private String pd_mainImage;

    // 저장할 값
    private String mem_id;

    public int getCtg_level() {
        return ctg_level;
    }

    public void setCtg_level(int ctg_level) {
        this.ctg_level = ctg_level;
    }

    public String getCtg_name() {
        return ctg_name;
    }

    public void setCtg_name(String ctg_name) {
        this.ctg_name = ctg_name;
    }

    public int getCtg_code() {
        return ctg_code;
    }

    public void setCtg_code(int ctg_code) {
        this.ctg_code = ctg_code;
    }

    public int getCtg_codeRef() {
        return ctg_codeRef;
    }

    public void setCtg_codeRef(int ctg_codeRef) {
        this.ctg_codeRef = ctg_codeRef;
    }

    public Date getRc_register_datetime() {
        return rc_register_datetime;
    }

    public void setRc_register_datetime(Date rc_register_datetime) {
        this.rc_register_datetime = rc_register_datetime;
    }

    public int getPd_num() {
        return pd_num;
    }

    public void setPd_num(int pd_num) {
        this.pd_num = pd_num;
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

    public String getPd_mainImage() {
        return pd_mainImage;
    }

    public void setPd_mainImage(String pd_mainImage) {
        this.pd_mainImage = pd_mainImage;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    @Override
    public String toString() {
        return "RecommendDTO{" +
                "ctg_level=" + ctg_level +
                ", ctg_name='" + ctg_name + '\'' +
                ", ctg_code='" + ctg_code + '\'' +
                ", ctg_codeRef='" + ctg_codeRef + '\'' +
                ", rc_register_datetime=" + rc_register_datetime +
                '}';
    }
}
