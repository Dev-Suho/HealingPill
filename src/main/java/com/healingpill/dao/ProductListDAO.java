package com.healingpill.dao;

import com.healingpill.dto.ProductVO;
import com.healingpill.dto.ProductViewVO;

import java.util.List;

public interface ProductListDAO {

    String NAMESPACE = "product.";

    // 관리자 페이지 상품 목록
    public List<ProductVO> productList() throws Exception;

    // 관리자 페이지 상품 조회
    public ProductViewVO productView(int pd_num) throws Exception;

    public List<ProductVO> mainProductView() throws Exception;
}
