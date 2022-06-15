package com.healingpill.dto;

public class ProductCategoryVO {
    /*
        ctg_Name varchar2(30) not null ,
        ctg_Code varchar2(30) not null ,
        ctg_CodeRef varchar2(30) null,
        primary key (ctg_Code),
        foreign key (ctg_CodeRef) references product_category(ctg_Code)
     */

    private String ctg_Name;
    private String ctg_Code;
    private String ctg_CodeRef;
    private int ctg_level;

    public int getCtg_level() {
        return ctg_level;
    }

    public void setCtg_level(int ctg_level) {
        this.ctg_level = ctg_level;
    }

    public String getCtg_Name() {
        return ctg_Name;
    }

    public void setCtg_Name(String ctg_Name) {
        this.ctg_Name = ctg_Name;
    }

    public String getCtg_Code() {
        return ctg_Code;
    }

    public void setCtg_Code(String ctg_Code) {
        this.ctg_Code = ctg_Code;
    }

    public String getCtg_CodeRef() {
        return ctg_CodeRef;
    }

    public void setCtg_CodeRef(String ctg_CodeRef) {
        this.ctg_CodeRef = ctg_CodeRef;
    }
}
