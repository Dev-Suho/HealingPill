package com.healingpill.controller;

import com.healingpill.dto.MemberDTO;
import com.healingpill.service.MemberJoinService;
import com.healingpill.service.MemberJoinServiceImpl;
import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MemberJoinController {
    // 로그 기록을 남기기 위한 Logger 클래스
    private static final Logger logger = LoggerFactory.getLogger(MemberJoinController.class);

    @Autowired
    MemberJoinServiceImpl memberJoinServiceImpl;

    private MemberJoinService memberJoinService;

    @RequestMapping(value = "Join")
    public String memberJoin() {
        return "memberJoin";
    }


    // 회원가입 페이지 이동
    @RequestMapping(value = "/memberJoin", method = RequestMethod.POST)
    public String memberJoinPOST(MemberDTO memberDTO, Model model) {
        logger.debug("회원가입 페이지 이동");
        memberJoinServiceImpl.MemberJoin(memberDTO);


        String username = memberDTO.getMem_username();
        model.addAttribute("mem_username", username);
        return "memberJoinSuccess";
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

    @ResponseBody
    @RequestMapping(value = "/idCheck", method = RequestMethod.POST)
    public int postIdCheck(HttpServletRequest request) throws Exception {
        String id = request.getParameter("mem_id");
        MemberDTO idCheck = memberJoinService.idCheck(id);

        int result = 0;

        if(idCheck != null) {
            result = 1;
        }

        return result;
    }


}
