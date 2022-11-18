package com.healingpill.dao;

import com.healingpill.dto.*;

public interface OrderDAO {

    String NAMESPACE = "order.";

    // 상품 정보 가져오기
    public void orderInfo(OrderDTO orderDTO) throws Exception;

    public void orderInfo_Details(OrderDetailDTO orderDetailDTO) throws Exception;

    // 단일 상품 구매
    public void orderProduct(OrderDetailDTO orderDetailDTO) throws Exception;

    // 포인트 적립
    public void savePoint(OrderDTO orderDTO) throws Exception;

    // 주문 수량 카운트
    public void orderCount(OrderDetailDTO orderDetailDTO) throws Exception;

    // 포인트 사용
    public void usePoint(OrderDTO orderDTO) throws Exception;

    // 카트 삭제
    public void deleteCart(OrderDTO orderDTO) throws Exception;
}
