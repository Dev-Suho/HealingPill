package com.healingpill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String main() {
        return "index";
    }

    //관리자 페이지
    //상품추가
    @RequestMapping(value = "/admin/product_add")
    public String pdadd() { return "/admin/product_add";}
    //관리자 첫 페이지
    @RequestMapping(value = "/admin/index")
    public String adminindex() { return "/admin/index";}
    //매거진 추가
    @RequestMapping(value = "/admin/cm_magazine")
    public String adminmagazine() { return "/admin/cm_magazine";}
}
