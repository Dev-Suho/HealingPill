package com.healingpill.controller;

import com.healingpill.dto.*;
import com.healingpill.service.OrderService;
import com.healingpill.service.ProductListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

@Controller
public class OrderController {

    @Inject
    OrderService orderService;

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


    @RequestMapping(value = "/orderComplete", method = RequestMethod.GET)
    public String viewOrderComplete(){
        return "checkoutComplete";
    }


    @RequestMapping(value = "/cartList", method = RequestMethod.POST)
    public void order(HttpSession session, OrderDTO orderDTO, OrderDetailDTO orderDetailDTO) throws Exception {
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("memeber");
        String mem_id = memberDTO.getMem_id();

        orderService.orderInfo(orderDTO);
        orderService.orderInfo_Details(orderDetailDTO);
    }

}
