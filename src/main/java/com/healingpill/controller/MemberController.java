package com.healingpill.controller;

import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.ProductVO;
import com.healingpill.service.MemberModifyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;

@Controller
public class MemberController {

    @Inject
    MemberModifyService memberModifyService;

    @RequestMapping(value = "/MypageModify", method = RequestMethod.POST)
    public String postMemberModify(MemberDTO memberDTO) throws Exception {
        memberModifyService.memberModify(memberDTO);

        return "redirect:/MypageModify";
    }

}
