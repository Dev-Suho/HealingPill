package com.healingpill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String main() {
        return "index";
    }


    @RequestMapping(value = "/survey")
    public String survey() {
        return "survey";
    }
    @RequestMapping(value = "/survey_1")
    public String survey_1() {
        return "survey_1";
    }
    @RequestMapping(value = "/survey_2")
    public String survey_2() {
        return "survey_2";
    }
    @RequestMapping(value = "/survey_3")
    public String survey_3() {
        return "survey_3";
    }
    @RequestMapping(value = "/survey_4")
    public String survey_4() {
        return "survey_4";
    }
    @RequestMapping(value = "/survey_5")
    public String survey_5() {
        return "survey_5";
    }

    @RequestMapping(value = "/surveyresult")
    public String surveyresult() {
        return "surveyresult";
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
