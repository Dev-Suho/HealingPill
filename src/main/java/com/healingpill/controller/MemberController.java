package com.healingpill.controller;

import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.OrderDTO;
import com.healingpill.dto.ProductVO;
import com.healingpill.service.MemberModifyService;
import com.healingpill.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.xml.ws.http.HTTPException;
import java.util.List;

@Controller
public class MemberController {

    @Inject
    MemberModifyService memberModifyService;

    @Inject
    MemberService memberService;


    // 회원정보 수정 페이지
    @RequestMapping(value = "/MypageModify", method = RequestMethod.GET)
    public String getMyPageModify(@RequestParam("num") int mem_num, Model model) throws Exception {

        MemberDTO memberDTO = memberModifyService.myPageModifyView(mem_num);
        model.addAttribute("member", memberDTO);

        return "/MypageModify";
    }

    @RequestMapping(value = "/MypageModify", method = RequestMethod.POST)
    public String postMyPageModify(MemberDTO memberDTO) throws Exception {
        memberModifyService.myPageModify(memberDTO);

        return "redirect:/Mypage";
    }
    // 회원 탈퇴
    @RequestMapping(value = "Mypage/delete", method = RequestMethod.GET)
    public String Memberdelete(@RequestParam("mem_num") int mem_num) throws Exception{
        memberModifyService.memberDelete(mem_num);

        return "redirect:/";
    }

    @RequestMapping (value = "/Mypage_order", method = RequestMethod.GET)
    public String mem_orderList(HttpSession session , OrderDTO order, Model model) throws Exception {

        MemberDTO member = (MemberDTO) session.getAttribute("member");
        String userID = member.getMem_id();

        order.setMem_id(userID);

        List<OrderDTO> mem_orderList = memberService.mem_orderList(order);

        model.addAttribute("orderList", mem_orderList);

        return "/Mypage_order";

    }

}
