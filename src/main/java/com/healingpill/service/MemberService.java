package com.healingpill.service;

import com.healingpill.dto.OrderDTO;

import java.util.List;

public interface MemberService {

    // Mypage 주문 내역 불러오기
    public List<OrderDTO> mem_orderList(OrderDTO dto) throws Exception;
}
