package com.healingpill.service;

import com.healingpill.dao.ShopDAO;
import com.healingpill.dto.ProductViewVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class ShopServiceImpl implements ShopService {

    @Inject
    private ShopDAO shopDAO;

    @Override
    public List<ProductViewVO> list(int ctg_code) throws Exception {
        return shopDAO.list(ctg_code);
    }
}
