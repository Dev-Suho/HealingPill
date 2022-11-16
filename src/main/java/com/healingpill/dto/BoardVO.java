package com.healingpill.dto;

import java.util.Date;

public class BoardVO {

    private int mg_no;

    private String mg_sum;

    public String getMg_sum() {
        return mg_sum;
    }

    public void setMg_sum(String mg_sum) {
        this.mg_sum = mg_sum;
    }

    private String mg_contents;

    public String getMg_contents() {
        return mg_contents;
    }

    public void setMg_contents(String mg_contents) {
        this.mg_contents = mg_contents;
    }

    public BoardVO() {

    }

    private String mg_image;

    public String getMg_image() {
        return mg_image;
    }

    public void setMg_image(String mg_image) {
        this.mg_image = mg_image;
    }

    private String mg_title;
    private String mg_content;
    private Date mg_datetime;

    public int getMg_no() {
        return mg_no;
    }

    public void setMg_no(int mg_no) {
        this.mg_no = mg_no;
    }

    public String getMg_title() {
        return mg_title;
    }

    public void setMg_title(String mg_title) {
        this.mg_title = mg_title;
    }

    public String getMg_content() {
        return mg_content;
    }

    public void setMg_content(String mg_content) {
        this.mg_content = mg_content;
    }

    public Date getMg_datetime() {
        return mg_datetime;
    }

    public void setMg_datetime(Date mg_datetime) {
        this.mg_datetime = mg_datetime;
    }
}