package com.healingpill.service;

import com.healingpill.dao.OrderDAO;
import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.OrderPageDTO;
import com.healingpill.dto.OrderPageItemDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {


    private OrderDAO orderDAO;

    @Autowired
    public OrderServiceImpl(OrderDAO orderDAO) {
        this.orderDAO = orderDAO;
    }


    @Override
    public void orderRequest(OrderPageDTO orderPageDTO) {
        orderDAO.orderRequest(orderPageDTO);
    }

    @Override
    public List<OrderPageItemDTO> getProductsInfo(List<OrderPageItemDTO> orders) {

        List<OrderPageItemDTO> result = new ArrayList<OrderPageItemDTO>();

        for(OrderPageItemDTO orderPageItemDTO : orders) {
            OrderPageItemDTO productInfo = orderDAO.getProductsInfo(orderPageItemDTO.getPd_num());
            productInfo.setOrder_stock(orderPageItemDTO.getOrder_stock());
            productInfo.initSaleTotal();

            result.add(productInfo);
        }

        return result;
    }

    @Override
    public MemberDTO getMemberInfo(String mem_id) {
        return orderDAO.getMemberInfo(mem_id);
    }
}
