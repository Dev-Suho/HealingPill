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
    public void memberModify(MemberDTO memberDTO) throws Exception {
        sqlSession.update(NAMESPACE + "memberModify", memberDTO);
    }

}
