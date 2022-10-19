package com.healingpill.service;

import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.OrderPageDTO;
import com.healingpill.dto.OrderPageItemDTO;

import java.util.List;

public interface OrderService {

    // 단일 주문
    public void orderRequest(OrderPageDTO orderPageDTO);

    // 주문 정보
    public List<OrderPageItemDTO> getProductsInfo(List<OrderPageItemDTO> orders);


}
