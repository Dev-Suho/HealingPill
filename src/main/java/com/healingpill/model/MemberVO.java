package com.healingpill.model;

public class MemberVO {

    private int mem_num;
    private String mem_id;
    private String mem_password;
    private String mem_name;
    private String mem_phone;
    private String mem_birth_year;
    private int mem_birth_month;
    private int mem_birth_day;
    private String mem_address;
    private String mem_email;
    private int mem_sex;
    private int mem_register_datetime;
    private int mem_is_admin;

    public int getMem_num() {
        return mem_num;
    }

    public void setMem_num(int mem_num) {
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

    public int getMem_birth_month() {
        return mem_birth_month;
    }

    public void setMem_birth_month(int mem_birth_month) {
        this.mem_birth_month = mem_birth_month;
    }

    public int getMem_birth_day() {
        return mem_birth_day;
    }

    public void setMem_birth_day(int mem_birth_day) {
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

    public int getMem_sex() {
        return mem_sex;
    }

    public void setMem_sex(int mem_sex) {
        this.mem_sex = mem_sex;
    }

    public int getMem_register_datetime() {
        return mem_register_datetime;
    }

    public void setMem_register_datetime(int mem_register_datetime) {
        this.mem_register_datetime = mem_register_datetime;
    }

    public int getMem_is_admin() {
        return mem_is_admin;
    }

    public void setMem_is_admin(int mem_is_admin) {
        this.mem_is_admin = mem_is_admin;
    }

    @Override
    public String toString() {
        return "MemberVO{" +
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
                ", mem_sex=" + mem_sex +
                ", mem_register_datetime=" + mem_register_datetime +
                ", mem_is_admin=" + mem_is_admin +
                '}';
    }
}
