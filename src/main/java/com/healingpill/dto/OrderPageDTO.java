package com.healingpill.dto;

import java.util.List;

public class OrderPageDTO {
    /*
    order_id varchar2(50) primary key ,
    order_name varchar2(50) not null ,
    mem_id varchar2(50),
    mem_address1 varchar2(100) not null ,
    mem_address2 varchar2(100) not null ,
    mem_address3 varchar2(100) not null ,
    order_state varchar2(30) not null ,
    deliveryCost number not null ,
    usePoint number not null ,
    order_register_datetime date default sysdate,
    foreign key (mem_id) references MEMBER(MEM_ID)
     */

    private List<OrderPageItemDTO> orders;

    public List<OrderPageItemDTO> getOrders() {
        return orders;
    }

    public void setOrders(List<OrderPageItemDTO> orders) {
        this.orders = orders;
    }

    @Override
    public String toString() {
        return "OrderPageDTO{" +
                "orders=" + orders +
                '}';
    }
}
