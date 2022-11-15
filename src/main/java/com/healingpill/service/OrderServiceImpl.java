package com.healingpill.service;

import com.healingpill.dao.OrderDAO;
import com.healingpill.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Inject
    private OrderDAO orderDAO;

    @Override
    public void orderInfo(OrderDTO orderDTO) throws Exception {
        orderDAO.orderInfo(orderDTO);
    }

    @Override
    public void orderInfo_Details(OrderDetailDTO orderDetailDTO) throws Exception {
        orderDAO.orderInfo_Details(orderDetailDTO);
    }

    @Override
    public void orderProduct(OrderDetailDTO orderDetailDTO) throws Exception {
        orderDAO.orderProduct(orderDetailDTO);
    }

    @Override
    public void savePoint(OrderDTO orderDTO) throws Exception {
        orderDAO.savePoint(orderDTO);
    }

    @Override
    public void orderCount(OrderDetailDTO orderDetailDTO) throws Exception {
        orderDAO.orderCount(orderDetailDTO);
    }
}
