package com.healingpill.controller;

import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.OrderPageDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class OrderController {

    @RequestMapping(value = "/order", method = RequestMethod.GET)
    public void orderPageGET(HttpSession session, OrderPageDTO orderPageDTO, Model model) {
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
        String mem_id = memberDTO.getMem_id();

        System.out.println("mem_id : " + mem_id);
        System.out.println("orders : " + orderPageDTO.getOrders());
    }
}
