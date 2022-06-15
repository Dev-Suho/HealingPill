package com.healingpill.service;

import com.healingpill.dao.ProductCategoryDAO;
import com.healingpill.dto.ProductCategoryVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class ProductCategoryServiceImpl implements ProductCategoryService{

    @Inject
    private ProductCategoryDAO productCategoryDAO;

    @Override
    public List<ProductCategoryVO> category() throws Exception {
        return productCategoryDAO.category();
    }
}
