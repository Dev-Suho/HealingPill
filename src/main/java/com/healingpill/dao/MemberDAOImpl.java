package com.healingpill.dao;

import com.healingpill.dto.OrderDTO;
import com.healingpill.dto.OrderDetailDTO;
import com.healingpill.dto.RecommendDTO;
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
    public List<OrderDTO> myPageOrder(String mem_id) throws Exception {
        return sqlSession.selectList(NAMESPACE + "myPageOrder", mem_id);

    }

    @Override
    public List<OrderDetailDTO> myPageorderDetail(String order_id) throws Exception{
        return sqlSession.selectList( "order.myPageorderDetail", order_id);
    }

    @Override
    public List<RecommendDTO> myPageSurvey(String mem_id) throws Exception {
        return sqlSession.selectList(NAMESPACE + "myPageSurvey", mem_id);
    }
}
