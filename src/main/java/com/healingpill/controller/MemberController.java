package com.healingpill.controller;

import com.healingpill.dto.*;
import com.healingpill.service.MemberLoginService;
import com.healingpill.service.MemberModifyService;
import com.healingpill.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.slf4j.Logger;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
//import javax.xml.ws.http.HTTPException;
import java.io.Console;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

    private final MemberModifyService memberModifyService;
    private final MemberService memberService;
    private final MemberLoginService memberLoginService;

    @Autowired
    public MemberController(MemberModifyService memberModifyService, MemberService memberService, MemberLoginService memberLoginService) {
        this.memberModifyService = memberModifyService;
        this.memberService = memberService;
        this.memberLoginService = memberLoginService;
    }

    // 회원정보 수정 페이지
    @RequestMapping(value = "/MypageModify", method = RequestMethod.GET)
    public String getMyPageModify(@RequestParam("num") int mem_num, Model model) throws Exception {

        MemberDTO memberDTO = memberModifyService.myPageModifyView(mem_num);
        model.addAttribute("member", memberDTO);

        return "/MypageModify";
    }
    // 회원정보 수정

    @RequestMapping(value = "/MypageModify", method = RequestMethod.POST)
    public String postMyPageModify(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
        memberModifyService.myPageModify(memberDTO);

        //수정 적용
        HttpSession session = request.getSession();
        System.out.println("세션 아이디 : " + session.getId());

        // 세션 유효시간
        session.setMaxInactiveInterval(3600);
        System.out.println("세션 유효시간 : " + session.getMaxInactiveInterval());

        MemberDTO res = memberLoginService.login(memberDTO);

        session.setAttribute("member", res);
        // 수정 적용


        return "redirect:/Mypage";
    }

    // 회원 탈퇴
    @RequestMapping(value = "Mypage/delete", method = RequestMethod.GET)
    public String Memberdelete(@RequestParam("mem_num") int mem_num) throws Exception{
        memberModifyService.memberDelete(mem_num);

        return "redirect:/";
    }

    @RequestMapping(value = "myOrder", method = RequestMethod.GET)
    public String myOrder(@RequestParam("id") String mem_id, Model model) throws Exception {

        List<OrderDTO> orderDTO = memberService.myPageOrder(mem_id);

        model.addAttribute("order", orderDTO);

        return "Mypage_order";
    }

    // 회원 주문내역 제품 상세 정보
    @RequestMapping(value = "myPageorderDetail", method = RequestMethod.GET)
    public String  myPageorderDetail(@RequestParam("order") String order_id , Model model) throws Exception {

        List<OrderDetailDTO> OrderDetailDTO = memberService.myPageorderDetail(order_id);

        model.addAttribute("myPageorderDetail", OrderDetailDTO);
        return "Mypage_orderDetail";
    }

    @RequestMapping(value = "myPageSurvey", method = RequestMethod.GET)
    public String myPageSurvey(@RequestParam("id") String mem_id, Model model) throws Exception{
        List<RecommendDTO> recommendDTO = memberService.myPageSurvey(mem_id);
        model.addAttribute("survey", recommendDTO);

        return "Mypage_survey";
    }
}
