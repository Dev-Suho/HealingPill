package com.healingpill.dao;

import com.healingpill.dto.OrderDTO;
import org.springframework.core.annotation.Order;

import java.util.List;

public interface MemberDAO {

    String NAMESPACE = "member.";
    // Mypage 주문 내역 불러오기
    public List<OrderDTO> mem_orderList(OrderDTO dto) throws Exception;
}
