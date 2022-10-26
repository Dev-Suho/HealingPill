package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.OrderPageDTO;
import com.healingpill.dto.OrderPageItemDTO;

public interface OrderDAO {

    String NAMESPACE = "order.";

    // 상품 정보 가져오기
    public void orderRequest(OrderPageDTO orderPageDTO);

    public OrderPageItemDTO getProductsInfo(int pd_num);

    public MemberDTO getMemberInfo(String mem_id);
}
