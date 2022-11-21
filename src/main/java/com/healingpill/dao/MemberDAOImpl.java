package com.healingpill.dao;

import com.healingpill.dto.OrderDTO;
import com.sun.org.apache.xml.internal.utils.NameSpace;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import javax.xml.stream.events.Namespace;
import java.util.List;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Inject
    private SqlSession sqlSession;

    @Override
    public List<OrderDTO> mem_orderList(OrderDTO orderDTO) throws Exception {
        return sqlSession.selectList(NAMESPACE + "mem_orderList", orderDTO);
    }

    @Override
    public List<OrderDTO> myPageOrder(String mem_id) throws Exception {
        return sqlSession.selectList("order.myPageOrder", mem_id);
    }


}
