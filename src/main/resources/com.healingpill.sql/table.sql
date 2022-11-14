create table ORDER_ITEM(
                           orderItem_id number primary key ,
                           order_id varchar2(50),
                           pd_num number,
                           order_stock number,
                           totalPrice number,
                           savePoint number,
                           foreign key (order_id) references ORDER_REQUEST(ORDER_ID)
);

create table order_request(
                              order_id varchar2(50) primary key ,
                              order_name varchar2(50),
                              mem_id varchar2(50),
                              mem_address1 varchar2(100),
                              mem_address2 varchar2(100),
                              mem_address3 varchar2(100),
                              order_state varchar2(30) default '주문 신청',
                              deliveryCost number,
                              usePoint number,
                              order_register_datetime date default sysdate,
                              order_phone varchar2(50),
                              foreign key (mem_id) references MEMBER(MEM_ID)
);