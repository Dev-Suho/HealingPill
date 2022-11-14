package com.healingpill.service;

import com.healingpill.dto.AdminDTO;
import com.healingpill.dto.OrderDTO;
import com.healingpill.dto.OrderDetailDTO;

import java.util.List;


public interface AdminService {

    // 관리자 : index.jsp 회원 리스트 불러오기
    public List<AdminDTO> memberList() throws Exception;
    
    // 회원 상세정보 불러오기
    public AdminDTO member_detail(int mem_num) throws Exception;

    // 회원 상세정보 -> 주문 내역 불러오기
    public OrderDTO member_order(String mem_id) throws Exception;

    //order.jsp 주문 리스트 불러오기
    public List<OrderDTO> orderList() throws Exception;

    // ORDER에 ORDER_ID 값으로 주문 상세정보 ( 회원 )
    public OrderDTO orderDetail(String order_id) throws Exception;

    // ORDER에 ORDER_ID 값으로 주문 상세정보 ( 제품 )
    public OrderDetailDTO orderDetail2(String order_id) throws Exception;
}

