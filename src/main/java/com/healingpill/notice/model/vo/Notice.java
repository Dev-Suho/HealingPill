package com.healingpill.notice.model.vo;

import java.util.Date;

public class Notice {
    private int fa_no;
    private String fa_title;
    private String fa_content;
    private int fa_count;
    private Date fa_date;
    private String fa_status;

    public Notice() {}

    public Notice(int fa_no,String fa_title,String fa_content,int fa_count, Date fa_date, String fa_status)
    {
        super();
        this.fa_no = fa_no;
        this.fa_title = fa_title;
        this.fa_content = fa_content;
        this.fa_count = fa_count;
        this.fa_date = fa_date;
        this.fa_status = fa_status;
    }
    public Notice(String fa_title,String fa_content)
    {
        super();
        this.fa_title = fa_title;
        this.fa_content = fa_content;
    }

    public int getFa_no() {
        return fa_no;
    }

    public void setFa_no(int fa_no) {
        this.fa_no = fa_no;
    }

    public String getFa_title() {
        return fa_title;
    }

    public void setFa_title(String fa_title) {
        this.fa_title = fa_title;
    }

    public String getFa_content() {
        return fa_content;
    }

    public void setFa_content(String fa_content) {
        this.fa_content = fa_content;
    }

    public int getFa_count() {
        return fa_count;
    }

    public void setFa_count(int fa_count) {
        this.fa_count = fa_count;
    }

    public Date getFa_date() {
        return fa_date;
    }

    public void setFa_date(Date fa_date) {
        this.fa_date = fa_date;
    }

    public String getFa_status() {
        return fa_status;
    }

    public void setFa_status(String fa_status) {
        this.fa_status = fa_status;
    }

    @Override
    public String toString()
    {
        return "Notice [fa_no=" + fa_no + ", fa_content=" + fa_content + ", fa_count=" + fa_count
                + ", fa_date=" + fa_date + ", fa_status=" + fa_status + "]";
    }
}
