package com.healingpill.service;

import com.healingpill.dao.OrderDAO;
import com.healingpill.dto.*;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface OrderService {

    // 주문 정보
    public void orderInfo(OrderDTO orderDTO) throws Exception;

    // 주문 상세 정보
    public void orderInfo_Details(OrderDetailDTO orderDetailDTO) throws Exception;

    // 주문 수량 체크
    public void orderCount(OrderDetailDTO orderDetailDTO) throws Exception;
    
    // 포인트 적립
    public void savePoint(OrderDetailDTO orderDetailDTO) throws Exception;

    public void orderProduct(OrderDetailDTO orderDetailDTO) throws Exception;
}
