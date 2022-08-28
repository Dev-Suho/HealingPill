package com.healingpill.controller;

import com.healingpill.dto.ProductVO;
import com.healingpill.dto.ProductViewVO;
import com.healingpill.service.ProductListService;
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
    ProductListService productListService;

    // 전 제품 보기 페이지
    @RequestMapping(value = "/allProducts", method = RequestMethod.GET)
    public String mainProductView(Model model) throws Exception {

        List<ProductVO> productList = productListService.mainProductView();
        model.addAttribute("products", productList);

        return "allProducts";
    }

    // 제품 상세 페이지 이동
    @RequestMapping(value = "/allProductsDetail", method = RequestMethod.GET)
    public String allProductsDetailGET(@RequestParam("itemId") int pd_num, Model model) throws Exception{

        ProductViewVO productViewVO = productListService.detailPageView(pd_num);
        model.addAttribute("products", productViewVO);

        return "allProductsDetail";
    }

}
