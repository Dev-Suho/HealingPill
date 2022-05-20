package com.healingpill.controller;

import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
    // 로그 기록을 남기기 위한 Logger 클래스
    private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

    // 회원가입 페이지 이동
    @RequestMapping(value = "memberJoin", method = RequestMethod.GET)
    public void memberJoinPOST() {
        logger.debug("회원가입 페이지 이동");

    }
    
    // 로그인 페이지 이동
    @RequestMapping(value = "memberLogin", method = RequestMethod.GET)
    public void memberLoginGET() {

        logger.debug("로그인 페이지 이동");
    }
}
