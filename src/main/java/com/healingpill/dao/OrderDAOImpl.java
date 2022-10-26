package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.OrderPageDTO;
import com.healingpill.dto.OrderPageItemDTO;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAOImpl implements OrderDAO{
    @Override
    public OrderPageItemDTO getProductsInfo(int pd_num) {
        return null;
    }

    @Override
    public void orderRequest(OrderPageDTO orderPageDTO) {

    }

    @Override
    public MemberDTO getMemberInfo(String mem_id) {
        return null;
    }
}
