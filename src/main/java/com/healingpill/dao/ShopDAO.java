package com.healingpill.dao;

import com.healingpill.dto.ProductViewVO;

import java.util.List;

public interface ShopDAO {

    String NAMESPACE = "shop.";

    // 상품 리스트
    public List<ProductViewVO> list(int ctg_code) throws Exception;
}
