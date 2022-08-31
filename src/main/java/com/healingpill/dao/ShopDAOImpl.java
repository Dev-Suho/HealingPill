package com.healingpill.dao;

import com.healingpill.dto.CartVO;
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

    @Override
    public int addCart(CartVO cartVO) throws Exception {
        return 0;
    }

    @Override
    public int deleteCart(int cartId) throws Exception {
        return 0;
    }

    @Override
    public int modifyCount(CartVO cartVO) throws Exception {
        return 0;
    }

    @Override
    public List<CartVO> getCart(String mem_id) throws Exception {
        return null;
    }

    @Override
    public CartVO checkCart(CartVO cartVO) throws Exception {
        return null;
    }
}
