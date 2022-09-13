package com.healingpill.controller;

import com.healingpill.dto.ProductViewVO;
import com.healingpill.service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import java.util.List;

@Controller
public class ShopController {

    @Inject
    ShopService shopService;

    // 상품 리스트
    @RequestMapping(value = "/allProducts/list", method = RequestMethod.GET)
    public String getList(@RequestParam("c") int ctg_code, @RequestParam("l") int level, Model model) throws Exception {
        List<ProductViewVO> list = null;
        list = shopService.list(ctg_code);

        model.addAttribute("list", list);

        return "allProducts";
    }
}
