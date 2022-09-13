package com.healingpill.service;

import com.healingpill.dto.ProductViewVO;

import java.util.List;

public interface ShopService {

    // 상품 리스트
    public List<ProductViewVO> list(int ctg_code) throws Exception;
}
