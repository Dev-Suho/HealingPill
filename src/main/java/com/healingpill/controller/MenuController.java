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
    @RequestMapping(value = "/about-us", method = RequestMethod.GET)
    public void aboutusPOST() {
        logger.debug("about-us 페이지 이동");

    }

}
