package com.healingpill.controller;

import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {
    // 로그 기록을 남기기 위한 Logger 클래스
    private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

    // about-us 페이지 이동
    @RequestMapping(value = "/about-us", method = RequestMethod.POST)
    public void aboutusPOST() {
        logger.debug("about-us 페이지 이동");

    }

    // magazine 페이지 이동
    @RequestMapping(value = "/magazine", method = RequestMethod.GET)
    public void magazineGET() {
        logger.debug("magazine 페이지 이동");

    }

    // magazineDetail 페이지 이동
    @RequestMapping(value = "/magazineDetail", method = RequestMethod.GET)
    public void magazineDetailGET() {
        logger.debug("magazineDetail 페이지 이동");

    }

    // FAQ 페이지 이동
    @RequestMapping(value = "/faq", method = RequestMethod.GET)
    public void faqGET() {
        logger.debug("FAQ 페이지 이동");

    }

    // 이벤트 페이지 이동
    @RequestMapping(value = "/event", method = RequestMethod.GET)
    public void eventGET() {
        logger.debug("FAQ 페이지 이동");

    }

}
