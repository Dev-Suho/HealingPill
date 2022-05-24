package com.healingpill.dao;

import com.healingpill.model.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Repository;

@Repository // 현재 클래스를 dao bean으로 등록
public class MemberLoginDAOImpl implements MemberLoginDAO {

   // @Autowired
  //  private SqlSessionTemplate sqlSession;

    @Override
    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO res = null;

        try {
          //  res =  sqlSession.selectOne(NAMESPACE + "login", memberDTO);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
}
