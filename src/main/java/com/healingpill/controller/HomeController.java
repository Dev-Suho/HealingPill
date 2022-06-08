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

    @RequestMapping(value = "/index")
    public String MainPage() {
        return "MainPage";
    }

    @RequestMapping(value = "/about-us", method = RequestMethod.POST)
    public String aboutusPOST() {
        logger.debug("about-us 페이지 이동");

        return "about-us";
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
}
