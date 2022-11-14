package com.healingpill.dao;

import com.healingpill.dto.AdminDTO;
import com.healingpill.dto.OrderDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
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
    public AdminDTO member_detail(int mem_num) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "member_detail", mem_num);
    }

    @Override
    public List<OrderDTO> orderList() throws Exception {
        return sqlSession.selectList( NAMESPACE + "orderList");
    }
}
