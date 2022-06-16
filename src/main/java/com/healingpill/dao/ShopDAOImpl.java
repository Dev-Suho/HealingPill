package com.healingpill.dao;

import com.healingpill.dto.ProductViewVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class ShopDAOImpl implements ShopDAO {

    @Inject
    private SqlSession sqlSession;

    @Override
    public List<ProductViewVO> list(int ctg_code) throws Exception {
        return sqlSession.selectList(NAMESPACE + "list", ctg_code);
    }
}
