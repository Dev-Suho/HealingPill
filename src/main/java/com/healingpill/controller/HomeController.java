package com.healingpill.controller;

//import com.sun.org.slf4j.internal.Logger;
//import com.sun.org.slf4j.internal.LoggerFactory;

import com.healingpill.dto.BoardVO;
import com.healingpill.dto.ProductViewVO;
import com.healingpill.service.BoardService;
import com.healingpill.service.ShopService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import java.util.List;

@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(MemberJoinController.class);

    @Inject
    ShopService shopService;

    @RequestMapping(value = "/")
    public String main(Model model) throws Exception {

        List<ProductViewVO> list = shopService.bestProductList();
        model.addAttribute("list", list);

        return "MainPage";
    }


    @RequestMapping(value = "/survey")
    public String survey() {
        return "survey";
    }

    @RequestMapping(value = "/surveyquestion")
    public String surveyquestion() {
        return "surveyquestion";
    }

    @RequestMapping(value = "/surveyresult")
    public String surveyresult() {
        return "surveyresult";
    }

    //관리자 페이지
    //상품추가
    @RequestMapping(value = "/admin/product_add")
    public String pdadd() {
        return "/admin/product_add";
    }

    //관리자 첫 페이지
    @RequestMapping(value = "/admin/index")
    public String adminindex() {
        return "/admin/index";
    }
    //관리자 주문 조회
    @RequestMapping(value = "/admin/order")
    public String adminorder() { return "/admin/order"; }

    //매거진 추가
    @RequestMapping(value = "/admin/cm_magazine")
    public String adminmagazine() {
        return "/admin/cm_magazine";
    }

    //매거진 관리
    @RequestMapping(value = "/admin/magazine_list")
    public String adminmagazine_list() { return "/admin/magazine_list";}


    //메인 페이지
    @RequestMapping(value = "/Main", method = RequestMethod.GET)
    public String MainPage() {
        return "MainPage";
    }

    @RequestMapping(value = "/Mypage" , method = RequestMethod.GET)
    public String Mypage() { return "/Mypage"; }

    @RequestMapping(value = "/Mypage_order" , method = RequestMethod.GET)
    public String Mypage_order() { return "/Mypage_order"; }


    @RequestMapping(value = "/about-us", method = RequestMethod.POST)
    public String aboutusPOST() {
        logger.debug("about-us 페이지 이동");

        return "about-us";
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
}
