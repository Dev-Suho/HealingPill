package com.healingpill.controller;

import com.healingpill.dto.MemberDTO;
import com.healingpill.service.MemberFindService;
import com.healingpill.service.MemberFindServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.logging.Logger;

@Controller
public class MemberFindController {

    private final MemberFindService memberFindService;

    @Autowired
    public MemberFindController(MemberFindService memberFindService) {
        this.memberFindService = memberFindService;
    }

    @RequestMapping(value = "findIdView", method = RequestMethod.GET)
    public String findIdView() throws Exception {
        return "findId";
    }

    @RequestMapping(value = "findPasswordView", method = RequestMethod.GET)
    public String findPasswordView() throws Exception {
        return "findPwd";
    }

    @RequestMapping(value = "findId", method = RequestMethod.POST)
    public String findId(MemberDTO memberDTO, Model model) {
        MemberDTO memberFind = memberFindService.findId(memberDTO);
        System.out.println(memberFind);

        if(memberFind == null) {
            model.addAttribute("check", 1);
        } else {
            model.addAttribute("check", 0);
            model.addAttribute("mem_id", memberFind.getMem_id());
        }

        return "findIdSuccess";
    }

    @RequestMapping(value = "findPassword", method = RequestMethod.POST)
    public String findPassword(MemberDTO memberDTO, Model model) {
        MemberDTO memberFind = memberFindService.findPassword(memberDTO);

        if(memberFind == null) {
            model.addAttribute("check", 1);
        } else {
            model.addAttribute("check", 0);
            model.addAttribute("mem_password", memberFind.getMem_password());
        }

        return "findPwdSuccess";
    }

}
