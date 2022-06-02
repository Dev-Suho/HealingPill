package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class MemberJoinDAOImpl implements MemberJoinDAO {

    @Inject
    private SqlSession sqlSession;


    @Override
    public void memberJoin(MemberDTO memberDTO) {
        System.out.println("회원가입 dao 시작");
        sqlSession.insert(NAMESPACE + "join", memberDTO);
        System.out.println("회원가입 dao 끝");
    }

    @Override
    public MemberDTO idCheck(String mem_id) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "idCheck", mem_id);
    }
}