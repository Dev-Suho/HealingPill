package com.healingpill.controller;

import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.OrderPageDTO;
import com.healingpill.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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



    @RequestMapping("/order/{mem_id}")
    public String orderPageGet(@PathVariable("mem_id") String mem_id, OrderPageDTO orderPageDTO, Model model){
        System.out.println("mem_id : " + mem_id);
        System.out.println("orders : " + orderPageDTO.getOrders());

        model.addAttribute("orderList", orderService.getProductsInfo(orderPageDTO.getOrders()));
        model.addAttribute("memberInfo", orderService.getMemberInfo(mem_id));

        return "checkoutComplete";
    }
}
