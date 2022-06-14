package com.healingpill.dao;

import com.healingpill.dto.ProductVO;

public interface ProductRegisterDAO {

    String NAMESPACE = "product.";

    public void register(ProductVO productVO) throws Exception;
}
