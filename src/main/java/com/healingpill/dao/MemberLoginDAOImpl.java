package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository // 현재 클래스를 dao bean으로 등록
public class MemberLoginDAOImpl implements MemberLoginDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO res = null;

        try {
          res =  sqlSession.selectOne(NAMESPACE + "loginCheck", memberDTO);
          System.out.println(res);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
}
