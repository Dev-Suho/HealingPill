package com.healingpill.dao;

import com.healingpill.dto.AdminDTO;
import com.healingpill.dto.OrderDTO;
import com.healingpill.dto.OrderDetailDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import javax.print.attribute.standard.MediaSize;
import java.util.List;

@Repository
public class AdminDAOImpl implements AdminDAO {

    @Inject
    private SqlSession sqlSession;

    @Override
    public List<AdminDTO> memberList() throws Exception {
        return sqlSession.selectList( NAMESPACE + "memberList");
    }

    @Override
    public AdminDTO member_detail(String mem_id) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "member_detail", mem_id);
    }

    @Override
    public List<OrderDTO> member_order(String mem_id) throws Exception {
        return  sqlSession.selectList(NAMESPACE + "member_order", mem_id);
    }
    @Override
    public List<OrderDTO> orderList() throws Exception {
        return sqlSession.selectList( NAMESPACE + "orderList");
    }

    @Override
    public OrderDTO orderDetail(String order_id) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "orderDetail", order_id);
    }
    @Override
    public OrderDetailDTO orderDetail2(String order_id) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "orderDetail2", order_id);
    }

    //member_detail 에 주문 내역 리스트 불러오기
    public List<OrderDTO> memorderList(OrderDTO odto) throws Exception {
        return sqlSession.selectList(NAMESPACE + "memorderList", odto);
    }
}
