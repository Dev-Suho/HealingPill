package com.healingpill.controller;

import com.healingpill.model.MemberDTO;
import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

    @RequestMapping(value = "/Login")
    public String login() {
        logger.debug("로그인 페이지 이동");
        System.out.println("로그인 페이지 이동");
        return "memberLogin";
    }

    @RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
    public String memberLogin(MemberDTO memberDTO, HttpServletRequest request) {
        logger.debug("Login 성공");
        System.out.println("userLogin.do 실행");

        HttpSession session = request.getSession();
        MemberDTO res = memberLoginService.login(memberDTO);

        if (res!= null) {
            session.setAttribute("res", res);
            System.out.println("로그인성공");
            return "redirect:index";
        } else {
            System.out.println("로그인실패");
            return "redirect:Login";
        }
    }
}
