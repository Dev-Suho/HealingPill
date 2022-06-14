package com.healingpill.controller;

import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(MemberJoinController.class);
    
    @RequestMapping(value = "/")
    public String main() {
        return "MainPage";
    }

    @RequestMapping(value = "/Main", method = RequestMethod.GET)
    public String MainPage() {
        return "MainPage";
    }

    @RequestMapping(value = "/about-us", method = RequestMethod.POST)
    public String aboutusPOST() {
        logger.debug("about-us 페이지 이동");

        return "about-us";
    }

    @RequestMapping(value = "/cart")
    public String cartView() {
        return "cart";
    }

    // magazine 페이지 이동
    @RequestMapping(value = "/magazine", method = RequestMethod.GET)
    public String magazineGET() {
        logger.debug("magazine 페이지 이동");

        return "magazine";
    }

    // magazineDetail 페이지 이동
    @RequestMapping(value = "/magazineDetail", method = RequestMethod.GET)
    public String magazineDetailGET() {
        logger.debug("magazineDetail 페이지 이동");

        return "magazineDetail";
    }

    // FAQ 페이지 이동
    @RequestMapping(value = "/faq", method = RequestMethod.GET)
    public String faqGET() {
        logger.debug("FAQ 페이지 이동");

        return "faq";
    }

    // 이벤트 페이지 이동
    @RequestMapping(value = "/event", method = RequestMethod.GET)
    public String eventGET() {
        logger.debug("이벤트 페이지 이동");

        return "event";
    }

    // jusoPopup 페이지 이동
    @RequestMapping(value = "/jusoPopup", method = RequestMethod.GET)
    public String jusoPopupGET() {
        logger.debug("jusoPopup 페이지 이동");

        return "jusoPopup";
    }

    // allProducts 페이지 이동
    @RequestMapping(value = "/allProducts", method = RequestMethod.GET)
    public String allProductsGET() {
        logger.debug("allProducts 페이지 이동");

        return "allProducts";
    }

    // allProductsDetail 페이지 이동
    @RequestMapping(value = "/allProductsDetail", method = RequestMethod.GET)
    public String allProductsDetailGET() {
        logger.debug("allProductsDetail 페이지 이동");

        return "allProductsDetail";
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

    //관리자 첫 페이지
    @RequestMapping(value = "/index")
    public String adminindex() { return "/admin/index";}
}
