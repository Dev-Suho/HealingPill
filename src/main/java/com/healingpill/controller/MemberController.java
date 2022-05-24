package com.healingpill.controller;

import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
    // 로그 기록을 남기기 위한 Logger 클래스
    private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

    // 회원가입 페이지 이동
    @RequestMapping(value = "/memberJoin", method = RequestMethod.GET)
    public String memberJoinPOST() {
        logger.debug("회원가입 페이지 이동");
        return "memberJoin";
    }


    // 로그인 성공 페이지 이동
    @RequestMapping(value = "/memberJoinSuccess", method = RequestMethod.POST)
    public void memberJoinSuccessPOST() {

        logger.debug("로그인 성공 페이지 이동");
    }

    @GetMapping("/juso")
    public String jusoRequest() {
        return "jusoPopup";
    }

    @PostMapping("/juso")
    public String jusoResponse(String roadFullAddr, String inputYn, Model model) {
        System.out.println("주소: " + roadFullAddr);
        model.addAttribute("roadFullAddr", roadFullAddr);
        model.addAttribute("inputYn",inputYn);
        return "jusoPopup";
    }
}
