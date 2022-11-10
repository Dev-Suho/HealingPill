package com.healingpill.dao;

import com.healingpill.dto.*;

public interface OrderDAO {

    String NAMESPACE = "order.";

    // 상품 정보 가져오기
    public void orderInfo(OrderDTO orderDTO) throws Exception;

    public void orderInfo_Details(OrderDetailDTO orderDetailDTO) throws Exception;

    // 주문수량 체크
    public void orderCount(OrderDetailDTO orderDetailDTO) throws Exception;

    // 포인트 적립
    public void savePoint(OrderDetailDTO orderDetailDTO) throws Exception;
}
