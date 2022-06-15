package com.healingpill.dao;

import com.healingpill.dto.ProductVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class ProductModifyDAOImpl implements ProductModifyDAO{

    @Inject
    private SqlSession sqlSession;

    @Override
    public void productModify(ProductVO productVO) throws Exception {
        sqlSession.update(NAMESPACE + "productModify", productVO);
    }

    @Override
    public void productDelete(int pd_num) throws Exception {
        sqlSession.delete(NAMESPACE + "productDelete", pd_num);
    }
}
