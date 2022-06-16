package com.healingpill.controller;

import com.healingpill.dto.MagazineDTO;
import com.healingpill.service.MagazineService;
//import com.sun.org.slf4j.internal.Logger;
//import com.sun.org.slf4j.internal.LoggerFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class MagazineController {

    private Logger logger = LoggerFactory.getLogger(MemberLoginController.class);

    @Autowired
    private MagazineService magazineService;

    @RequestMapping(value = "/Magazine")
    public String view() {
        return "magazine";
    }

    @RequestMapping(value = "/magazine", method = RequestMethod.POST)
    public String Magazine(MagazineDTO magazineDTO, HttpServletRequest request) {
        logger.debug("view 성공");

        HttpSession session = request.getSession();
        System.out.println("세션 아이디 : " + session.getId());

        session.setMaxInactiveInterval(3600);
        System.out.println("세션 유효시간 : " + session.getMaxInactiveInterval());

        MagazineDTO res = magazineService.view(magazineDTO);

        if(res != null) {
            session.setAttribute("res", res);
            System.out.println("로그인성공");

            return "MainPage";
        }else {
            System.out.println("로그인실패");
            return "redirect:Login";
        }
    }
}
