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

    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public String viewCheckout(){
        return "checkout";
    }

    @RequestMapping(value = "/orderComplete", method = RequestMethod.GET)
    public String viewOrderComplete(){
        return "checkoutComplete";
    }

}
