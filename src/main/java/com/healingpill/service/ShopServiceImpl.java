package com.healingpill.service;

import com.healingpill.dao.ShopDAO;
import com.healingpill.dto.*;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class ShopServiceImpl implements ShopService {

    @Inject
    private ShopDAO shopDAO;

    @Override
    public List<ProductViewVO> list(int ctg_code) throws Exception {
        return shopDAO.list(ctg_code);
    }

    // 장바구니 추가
    @Override
    public int addCart(CartVO cartVO) throws Exception {

        try {
            // 등록 성공 1 반환
            return shopDAO.addCart(cartVO);
        } catch (Exception e) {
            // 등록 실패
            return 0;
        }
    }

    // 장바구니 삭제
    @Override
    public void deleteCart(CartVO cartVO) throws Exception {
        shopDAO.deleteCart(cartVO);
    }

    @Override
    public int modifyCount(CartVO cartVO) throws Exception {
        return 0;
    }

    @Override
    public List<CartListVO> getCartList(String mem_id) throws Exception {
        return shopDAO.getCartList(mem_id);
    }

    @Override
    public CartVO checkCart(CartVO cartVO) throws Exception {
        return null;
    }


}
