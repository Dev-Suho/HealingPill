package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class MemberModifyDAOImpl implements MemberModifyDAO{

    @Inject
    private SqlSession sqlSession;
    
    //회원 수정

    @Override
    public void myPageModify(MemberDTO memberDTO) throws Exception {
        sqlSession.update(NAMESPACE + "myPageModify", memberDTO);
    }

    // 회원 수정 페이지
    public MemberDTO myPageModifyView(int mem_num) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "myPageModifyView", mem_num);
    }
    // 회원 탈퇴
    @Override
    public void memberDelete(int mem_num) throws Exception
    {
        sqlSession.delete(NAMESPACE + "memberDelete", mem_num);
    }
}
