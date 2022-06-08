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
}
