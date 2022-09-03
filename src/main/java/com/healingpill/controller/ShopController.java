package com.healingpill.controller;

import com.healingpill.dto.CartVO;
import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.ProductVO;
import com.healingpill.dto.ProductViewVO;
import com.healingpill.service.ProductListService;
import com.healingpill.service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ShopController {

    @Inject
    ProductListService productListService;

    @Inject
    ShopService shopService;

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

    /*
    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String addCart(CartVO cartVO, HttpSession session) {
        return "cart";
    }
     */

    @ResponseBody
    @RequestMapping(value = "/card/add", method = RequestMethod.POST)
    public String addCartPOST(CartVO cartVO, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("res");

        if(memberDTO == null) {
            // 로그인이 안 되어 있을 때 5 반환
            return "5";
        }

        int result = shopService.addCart(cartVO);

        return result + "";
    }
}
