package com.healingpill.controller;

import com.healingpill.dto.*;
import com.healingpill.service.ProductListService;
import com.healingpill.service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;
import java.text.DecimalFormat;
import java.util.Calendar;
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



    @ResponseBody
    @RequestMapping(value = "/cart/add", method = RequestMethod.POST)
    public int addCartPOST(CartVO cartVO, HttpSession session) throws Exception {
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");

        int result = 0;

        if(memberDTO == null) {
            // 로그인이 안 되어 있을 때 5 반환
            return 3;
        }

        cartVO.setMem_id(memberDTO.getMem_id());
        result = shopService.addCart(cartVO);

        return result;
    }

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String getCartList(HttpSession session, Model model) throws Exception{
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");

        if(memberDTO != null) {
            String mem_id = memberDTO.getMem_id();
            List<CartListVO> cartList = shopService.getCartList(mem_id);
            model.addAttribute("cartList", cartList);
        }
        return "cart";
    }

    @ResponseBody
    @RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
    public int deleteCart(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, CartVO cartVO) throws Exception{
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
        String mem_id = memberDTO.getMem_id();

        int result = 0;
        int cart_id = 0;

        if(memberDTO != null) {
            cartVO.setMem_id(mem_id);

            for(String i : chArr) {
                cart_id = Integer.parseInt(i);
                cartVO.setCart_id(cart_id);
                shopService.deleteCart(cartVO);
            }
            result = 1;
        }
        return result;
    }
}
