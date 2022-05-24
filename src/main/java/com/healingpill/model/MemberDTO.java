package com.healingpill.model;

import java.util.Date;

public class MemberDTO {
    private String mem_num;
    private String mem_id;
    private String mem_password;
    private String mem_name;
    private String mem_phone;
    private String mem_birth_year;
    private String mem_birth_month;
    private String mem_birth_day;
    private String mem_address;
    private String mem_email;
    private String mem_sex;
    private Date mem_register_datetime;
    private String mem_is_admin;

    public String getMem_num() {
        return mem_num;
    }

    public void setMem_num(String mem_num) {
        this.mem_num = mem_num;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public String getMem_password() {
        return mem_password;
    }

    public void setMem_password(String mem_password) {
        this.mem_password = mem_password;
    }

    public String getMem_name() {
        return mem_name;
    }

    public void setMem_name(String mem_name) {
        this.mem_name = mem_name;
    }

    public String getMem_phone() {
        return mem_phone;
    }

    public void setMem_phone(String mem_phone) {
        this.mem_phone = mem_phone;
    }

    public String getMem_birth_year() {
        return mem_birth_year;
    }

    public void setMem_birth_year(String mem_birth_year) {
        this.mem_birth_year = mem_birth_year;
    }

    public String getMem_birth_month() {
        return mem_birth_month;
    }

    public void setMem_birth_month(String mem_birth_month) {
        this.mem_birth_month = mem_birth_month;
    }

    public String getMem_birth_day() {
        return mem_birth_day;
    }

    public void setMem_birth_day(String mem_birth_day) {
        this.mem_birth_day = mem_birth_day;
    }

    public String getMem_address() {
        return mem_address;
    }

    public void setMem_address(String mem_address) {
        this.mem_address = mem_address;
    }

    public String getMem_email() {
        return mem_email;
    }

    public void setMem_email(String mem_email) {
        this.mem_email = mem_email;
    }

    public String getMem_sex() {
        return mem_sex;
    }

    public void setMem_sex(String mem_sex) {
        this.mem_sex = mem_sex;
    }

    public Date getMem_register_datetime() {
        return mem_register_datetime;
    }

    public void setMem_register_datetime(Date mem_register_datetime) {
        this.mem_register_datetime = mem_register_datetime;
    }

    public String getMem_is_admin() {
        return mem_is_admin;
    }

    public void setMem_is_admin(String mem_is_admin) {
        this.mem_is_admin = mem_is_admin;
    }

    @Override
    public String toString() {
        return "MemberDTO{" +
                "mem_num=" + mem_num +
                ", mem_id='" + mem_id + '\'' +
                ", mem_password='" + mem_password + '\'' +
                ", mem_name='" + mem_name + '\'' +
                ", mem_phone='" + mem_phone + '\'' +
                ", mem_birth_year='" + mem_birth_year + '\'' +
                ", mem_birth_month=" + mem_birth_month +
                ", mem_birth_day=" + mem_birth_day +
                ", mem_address='" + mem_address + '\'' +
                ", mem_email='" + mem_email + '\'' +
                ", mem_sex='" + mem_sex + '\'' +
                ", mem_register_datetime=" + mem_register_datetime +
                ", mem_is_admin='" + mem_is_admin + '\'' +
                '}';
    }

    public MemberDTO(String mem_num, String mem_id, String mem_password, String mem_name, String mem_phone, String mem_birth_year, String mem_birth_month, String mem_birth_day, String mem_address, String mem_email, String mem_sex, Date mem_register_datetime, String mem_is_admin) {
        this.mem_num = mem_num;
        this.mem_id = mem_id;
        this.mem_password = mem_password;
        this.mem_name = mem_name;
        this.mem_phone = mem_phone;
        this.mem_birth_year = mem_birth_year;
        this.mem_birth_month = mem_birth_month;
        this.mem_birth_day = mem_birth_day;
        this.mem_address = mem_address;
        this.mem_email = mem_email;
        this.mem_sex = mem_sex;
        this.mem_register_datetime = mem_register_datetime;
        this.mem_is_admin = mem_is_admin;
    }
}
