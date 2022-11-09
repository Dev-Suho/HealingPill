package com.healingpill.controller;

import com.healingpill.dto.*;
import com.healingpill.service.OrderService;
import com.healingpill.service.ProductListService;
import com.healingpill.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;
import java.util.List;

@Controller
public class OrderController {

    @Inject
    OrderService orderService;

    @Inject
    ShopService shopService;

    @Inject
    ProductListService productListService;


    @ResponseBody
    @RequestMapping(value = "/confirm", method = RequestMethod.POST)
    public int viewCheckout(HttpSession session) throws Exception{
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");


        int result = 0;

        if(memberDTO == null) {
            return 1;
        }

        return result;
    }

    @RequestMapping(value = "/orderPage", method = RequestMethod.GET)
    public String orderPage(@RequestParam("itemId") int pd_num, Model model, HttpSession session) throws Exception {
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");


        ProductViewVO productViewVO = productListService.productView(pd_num);
        model.addAttribute("products", productViewVO);


        return "checkout";
    }

    @RequestMapping(value = "/orderList", method = RequestMethod.GET)
    public String orderListPage(Model model, HttpSession session) throws Exception{
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");

        if(memberDTO != null) {
            String mem_id = memberDTO.getMem_id();
            List<CartListVO> cartList = shopService.getCartList(mem_id);
            model.addAttribute("cartList", cartList);
        }

        return "checkoutList";
    }


    @RequestMapping(value = "/orderComplete", method = RequestMethod.GET)
    public String viewOrderComplete(){
        return "checkoutComplete";
    }


    @RequestMapping(value = "/cartList", method = RequestMethod.POST)
    public void order(HttpSession session, OrderDTO orderDTO, OrderDetailDTO orderDetailDTO) throws Exception {
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
        String mem_id = memberDTO.getMem_id();

        orderService.orderInfo(orderDTO);
        orderService.orderInfo_Details(orderDetailDTO);
    }

}
