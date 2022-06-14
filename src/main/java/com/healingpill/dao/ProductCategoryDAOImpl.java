package com.healingpill.dao;

import com.healingpill.dto.ProductCategoryVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class ProductCategoryDAOImpl implements ProductCategoryDAO{

    @Inject
    private SqlSession sqlSession;

    @Override
    public List<ProductCategoryVO> category() throws Exception {
        return sqlSession.selectList(NAMESPACE + "category");
    }
}
