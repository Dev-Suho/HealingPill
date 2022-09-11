package com.healingpill.dao;

import com.healingpill.dto.*;
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
        sqlSession.insert(NAMESPACE + "addCart", cartVO);

        return 1;
    }

    @Override
    public void deleteCart(CartVO cartVO) throws Exception {
        sqlSession.delete(NAMESPACE + "deleteCart", cartVO);
    }

    @Override
    public int modifyCount(CartVO cartVO) throws Exception {
        return 0;
    }

    @Override
    public List<CartListVO> getCartList(String mem_id) throws Exception {
        return sqlSession.selectList(NAMESPACE + "getCartList", mem_id);
    }

    @Override
    public CartVO checkCart(CartVO cartVO) throws Exception {
        return null;
    }

    @Override
    public void orderInfo(OrderVO orderVO) throws Exception {
        sqlSession.insert(NAMESPACE + "orderInfo", orderVO);
    }

    @Override
    public void orderInfo_Details(OrderDetailVO orderDetailVO) throws Exception {
        sqlSession.insert(NAMESPACE + "orderInfoDetails", orderDetailVO);
    }
}
