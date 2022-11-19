package com.healingpill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyRecommendController {

    @RequestMapping(value = "/Mypage_survey")
    public String survey() {
        return "Mypage_survey";
    }
}
