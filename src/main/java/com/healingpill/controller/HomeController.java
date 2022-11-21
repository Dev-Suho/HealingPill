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

    // 메인 페이지
    @RequestMapping(value = {"/", "/healingPill"})
    public String main(Model model) throws Exception {

        List<ProductViewVO> list = shopService.bestProductList();
        model.addAttribute("list", list);

        return "MainPage";
    }

    // 마이 페이지
    @RequestMapping(value = "/Mypage" , method = RequestMethod.GET)
    public String Mypage() { return "/Mypage"; }

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
