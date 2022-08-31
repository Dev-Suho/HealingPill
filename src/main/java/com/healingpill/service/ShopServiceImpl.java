package com.healingpill.service;

import com.healingpill.dao.ShopDAO;
import com.healingpill.dto.CartVO;
import com.healingpill.dto.ProductViewVO;
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
