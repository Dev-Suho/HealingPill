package com.healingpill.controller;

import com.healingpill.dto.*;
import com.healingpill.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class OrderController {

    private OrderService orderService;

    @Autowired
    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public String viewCheckout(){
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
