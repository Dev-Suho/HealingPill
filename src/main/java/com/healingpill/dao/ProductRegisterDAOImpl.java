package com.healingpill.dao;

import com.healingpill.dto.ProductVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class ProductRegisterDAOImpl implements ProductRegisterDAO {

    @Inject
    private SqlSession sqlSession;

    @Override
    public void register(ProductVO productVO) throws Exception {
        sqlSession.insert(NAMESPACE + "register", productVO);
    }
}
