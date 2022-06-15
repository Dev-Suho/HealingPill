package com.healingpill.service;

import com.healingpill.dao.ProductModifyDAO;
import com.healingpill.dto.ProductVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ProductModifyServiceImpl implements ProductModifyService{
    @Inject
    private ProductModifyDAO productModifyDAO;

    // 상품 수정
    @Override
    public void productModify(ProductVO productVO) throws Exception {
        productModifyDAO.productModify(productVO);
    }

    // 상품 삭제
    @Override
    public void productDelete(int pd_num) throws Exception {
        productModifyDAO.productDelete(pd_num);
    }
}
