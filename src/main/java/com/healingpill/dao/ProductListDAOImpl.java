package com.healingpill.dao;

import com.healingpill.dto.ProductVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class ProductListDAOImpl implements ProductListDAO{

    @Inject
    private SqlSession sqlSession;

    @Override
    public List<ProductVO> productList() throws Exception {
        return sqlSession.selectList(NAMESPACE + "productList");
    }

    @Override
    public ProductVO productView(int pd_num) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "productView", pd_num);
    }
}
