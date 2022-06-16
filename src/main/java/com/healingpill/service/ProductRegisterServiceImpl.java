package com.healingpill.service;

import com.healingpill.dao.ProductRegisterDAO;
import com.healingpill.dto.ProductVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ProductRegisterServiceImpl implements ProductRegisterService{

    @Inject
    private ProductRegisterDAO productRegisterDAO;

    @Override
    public void register(ProductVO productVO) throws Exception {
        productRegisterDAO.register(productVO);
    }
}
