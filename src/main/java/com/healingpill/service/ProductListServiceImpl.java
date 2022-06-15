package com.healingpill.service;

import com.healingpill.dao.ProductListDAO;
import com.healingpill.dto.ProductVO;
import com.healingpill.dto.ProductViewVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class ProductListServiceImpl implements ProductListService {

    @Inject
    private ProductListDAO productListDAO;

    @Override
    public List<ProductVO> productList() throws Exception {
        return productListDAO.productList();
    }

    @Override
    public ProductViewVO productView(int pd_num) throws Exception {
        return productListDAO.productView(pd_num);
    }
}
