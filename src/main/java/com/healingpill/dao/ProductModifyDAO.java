package com.healingpill.dao;

import com.healingpill.dto.ProductVO;

public interface ProductModifyDAO {
    String NAMESPACE = "product.";

    public void productModify(ProductVO productVO) throws Exception;

    // 상품 삭제
    public void productDelete(int pd_num) throws Exception;
}
