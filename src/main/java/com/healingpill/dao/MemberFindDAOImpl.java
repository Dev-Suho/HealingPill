package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class MemberFindDAOImpl implements MemberFindDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;


    @Override
    public int findIdCheck(String mem_phone) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "findIdCheck", mem_phone);
    }

    @Override
    public int findPasswordCheck(String mem_phone) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "findPasswordCheck", mem_phone);
    }

    @Override
    public MemberDTO findId(MemberDTO memberDTO) {
        System.out.println("findId() 처리");
        return sqlSession.selectOne(NAMESPACE + "findId", memberDTO);
    }

    @Override
    public MemberDTO findPassword(MemberDTO memberDTO) {
        return sqlSession.selectOne(NAMESPACE + "findPassword", memberDTO);
    }
}
