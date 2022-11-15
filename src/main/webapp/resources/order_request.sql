create table ORDER_REQUEST(
                              order_id varchar2(50) primary key ,
                              mem_id varchar2(50),
                              order_state varchar2(50),
                              order_address1 varchar2(50),
                              order_address2 varchar2(50),
                              order_address3 varchar2(50),
                              order_phone varchar2(50),
                              usePoint number,
                              totalPrice number,
                              order_register_datetime DATE default SYSDATE
);