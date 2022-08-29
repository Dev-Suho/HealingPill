package com.healingpill.dto;

import java.util.Date;

public class CartVO {
    /*
        cart_num number not null ,
    mem_num number not null ,
    pd_num number not null ,
    cart_stock number not null ,
    cart_register_datetime date default sysdate,
    primary key (cart_num, mem_num)
     */
    private int cart_num;
    private int mem_num;
    private int pd_num;
    private int cart_stock;
    private Date cart_register_datetime;
}
