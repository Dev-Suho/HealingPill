package com.healingpill.controller;

import com.healingpill.dto.MemberDTO;
//import com.sun.org.slf4j.internal.Logger;
//import com.sun.org.slf4j.internal.LoggerFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.healingpill.service.MemberLoginService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MemberLoginController {
    private Logger logger = LoggerFactory.getLogger(MemberLoginController.class);

    @Autowired
    private MemberLoginService memberLoginService;

    @RequestMapping(value = "/login")
    public String login() {
        logger.debug("로그인 페이지 이동");
        return "memberLogin";
    }

    @RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
    public String memberLogin(MemberDTO memberDTO, HttpServletRequest request) {
        logger.debug("Login 성공");

        // 세션 생성
        HttpSession session = request.getSession();
        System.out.println("세션 아이디 : " + session.getId());

        // 세션 유효시간
        session.setMaxInactiveInterval(3600);
        System.out.println("세션 유효시간 : " + session.getMaxInactiveInterval());

        MemberDTO res = memberLoginService.login(memberDTO);

        if (res!= null) {
            session.setAttribute("member", res);
            System.out.println("로그인성공");

            return "MainPage";
        } else {
            System.out.println("로그인 실패");
            return "redirect:Login";
        }
    }

    @RequestMapping(value = "/Logout", method = RequestMethod.GET)
    public String memberLogout(HttpSession session) throws Exception {
        session.invalidate();
        return "MainPage";
    }

    @RequestMapping(value = "/findId")
    public String findId() {
        logger.debug("아이디 찾기 페이지 이동");
        System.out.println("아이디 찾기 페이지 이동");
        return "findId";
    }

    @RequestMapping(value = "/findIdSuccess")
    public String findIdSuccess() {
        logger.debug("아이디 찾기 성공 페이지 이동");
        System.out.println("아이디 찾기 성공 페이지 이동");
        return "findIdSuccess";
    }

    @RequestMapping(value = "/findPwd")
    public String findPwd() {
        logger.debug("비밀번호 찾기 페이지 이동");
        System.out.println("비밀번호 찾기 페이지 이동");
        return "findPwd";
    }

    @RequestMapping(value = "/findPwdSuccess")
    public String findPwdSuccess() {
        logger.debug("비밀번호 찾기 페이지 이동");
        System.out.println("비밀번호 찾기 페이지 이동");
        return "findPwdSuccess";
    }
}
