package com.healingpill.controller;

import com.healingpill.dto.OrderPageDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class OrderController {

    @RequestMapping(value = "/order")
    public void orderPageGET(HttpSession session, OrderPageDTO orderPageDTO, Model model) {

    }
}
