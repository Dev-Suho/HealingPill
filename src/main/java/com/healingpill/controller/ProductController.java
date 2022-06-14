package com.healingpill.controller;

import com.healingpill.dto.ProductCategoryVO;
import com.healingpill.dto.ProductVO;
import com.healingpill.service.ProductCategoryService;
import com.healingpill.service.ProductListService;
import com.healingpill.service.ProductRegisterService;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import java.util.List;

@Controller
@RequestMapping("/admin/*")
public class ProductController {

    @Inject
    ProductCategoryService productCategoryService;
    @Inject
    ProductRegisterService productRegisterService;
    @Inject
    ProductListService productListService;
    // 상품 관리 페이지
    @RequestMapping(value = "/product_list", method = RequestMethod.GET)
    public String productListView(Model model) throws Exception {

        List<ProductVO> list = productListService.productList();
        model.addAttribute("list", list);


        return "/admin/product_list";
    }

    // 상품 목록 페이지
    // URL 주소에서 "n"의 값을 찾아서 int pd_num에게 전달
    @RequestMapping(value = "productView", method = RequestMethod.GET)
    public void ProductView(@RequestParam("n") int pd_num, Model model) throws Exception{

        ProductVO productVO = productListService.productView(pd_num);
        model.addAttribute("products", productVO);
    }

    //매거진 추가
    @RequestMapping(value = "/cm_magazine")
    public String adminmagazine() { return "/admin/cm_magazine";}

    // 카테고리 등록
    @RequestMapping(value = "/product_add", method = RequestMethod.GET)
    public String getProductRegister(Model model) throws Exception {
        List<ProductCategoryVO> category = null;
        category = productCategoryService.category();

        System.out.println("category = " + category);
        System.out.println("JSONArray = " + JSONArray.fromObject(category));

        // JSONArray를 사용해서 category를 JSON타입으로 변경한 뒤 category라는 변수로 지정
        model.addAttribute("category", JSONArray.fromObject(category));

        return "/admin/product_add";
    }

    // 상품 등록
    @RequestMapping(value = "/product_add", method = RequestMethod.POST)
    public String postProductRegister(ProductVO productVO) throws Exception {
        productRegisterService.register(productVO);

        return "redirect:/admin/index";
    }
}
