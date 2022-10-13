package com.healingpill.dao;

import com.healingpill.dto.AdminDTO;
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

}
