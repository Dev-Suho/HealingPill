package com.healingpill.dto;

import oracle.sql.DATE;

public class MagazineVO {

    private int MG_NO;
    private String MG_IMAGE;
    private String MG_TITLE;
    private String MG_CONTENT;
    private DATE MG_DATETIME;

    public int getMG_NO() {
        return MG_NO;
    }

    public void setMG_NO(int MG_NO) {
        this.MG_NO = MG_NO;
    }

    public String getMG_IMAGE() {
        return MG_IMAGE;
    }

    public void setMG_IMAGE(String MG_IMAGE) {
        this.MG_IMAGE = MG_IMAGE;
    }

    public String getMG_TITLE() {
        return MG_TITLE;
    }

    public void setMG_TITLE(String MG_TITLE) {
        this.MG_TITLE = MG_TITLE;
    }

    public String getMG_CONTENT() {
        return MG_CONTENT;
    }

    public void setMG_CONTENT(String MG_CONTENT) {
        this.MG_CONTENT = MG_CONTENT;
    }

    public DATE getMG_DATETIME() {
        return MG_DATETIME;
    }

    public void setMG_DATETIME(DATE MG_DATETIME) {
        this.MG_DATETIME = MG_DATETIME;
    }
}
