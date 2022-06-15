package com.healingpill.service;

import com.healingpill.dto.ProductVO;

public interface ProductModifyService {
    public void productModify(ProductVO productVO) throws Exception;

    public void productDelete(int pd_num) throws Exception;
}
