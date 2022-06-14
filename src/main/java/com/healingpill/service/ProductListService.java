package com.healingpill.service;

import com.healingpill.dto.ProductVO;

import java.util.List;

public interface ProductListService {

    // 상품 목록
    public List<ProductVO> productList() throws Exception;

    // 상품 조회
    public ProductVO productView(int pd_num) throws Exception;
}
