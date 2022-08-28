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

    // 관리자 페이지 상품 목록
    @Override
    public List<ProductVO> productList() throws Exception {
        return productListDAO.productList();
    }

    // 관리자 페이지 상품 조회
    @Override
    public ProductViewVO productView(int pd_num) throws Exception {
        return productListDAO.productView(pd_num);
    }

    @Override
    public List<ProductVO> mainProductView() throws Exception {
        return productListDAO.mainProductView();
    }

    @Override
    public ProductViewVO detailPageView(int pd_num) throws Exception {
        return productListDAO.detailPageView(pd_num);
    }
}
