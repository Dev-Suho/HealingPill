package com.healingpill.service;

import com.healingpill.dao.OrderDAO;
import com.healingpill.dto.OrderPageDTO;
import com.healingpill.dto.OrderPageItemDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDAO orderDAO;


    @Override
    public void orderRequest(OrderPageDTO orderPageDTO) {
        orderDAO.orderRequest(orderPageDTO);
    }

    @Override
    public List<OrderPageItemDTO> getProductsInfo(List<OrderPageItemDTO> orders) {
        return null;
    }
}
