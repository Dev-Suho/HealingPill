package com.healingpill.dao;

import com.healingpill.dto.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAOImpl implements OrderDAO{

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void orderInfo(OrderDTO orderDTO) throws Exception {
        sqlSession.insert(NAMESPACE + "orderRequest", orderDTO);
    }

    @Override
    public void orderInfo_Details(OrderDetailDTO orderDetailDTO) throws Exception {
        sqlSession.insert(NAMESPACE + "orderRequestDetails", orderDetailDTO);
    }

    @Override
    public void orderCount(OrderDetailDTO orderDetailDTO) throws Exception {
        sqlSession.update(NAMESPACE + "orderCount", orderDetailDTO);
    }

    @Override
    public void savePoint(OrderDetailDTO orderDetailDTO) throws Exception {
        sqlSession.update(NAMESPACE + "savePoint", orderDetailDTO);
    }

    @Override
    public void orderProduct(OrderDetailDTO orderDetailDTO) throws Exception {
        sqlSession.insert(NAMESPACE + "orderProduct", orderDetailDTO);
    }
}
