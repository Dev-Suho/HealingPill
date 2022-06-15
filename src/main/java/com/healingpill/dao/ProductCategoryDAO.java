package com.healingpill.dao;

import com.healingpill.dto.ProductCategoryVO;

import java.util.List;

public interface ProductCategoryDAO {

    String NAMESPACE = "product.";

    public List<ProductCategoryVO> category() throws Exception;
}
