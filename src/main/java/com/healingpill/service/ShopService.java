package com.healingpill.service;

import com.healingpill.dto.CartVO;
import com.healingpill.dto.ProductViewVO;

import java.util.List;

public interface ShopService {

    // 상품 리스트
    public List<ProductViewVO> list(int ctg_code) throws Exception;

    // 장바구니 담기
    public void addCart(CartVO cartVO) throws Exception;
}
