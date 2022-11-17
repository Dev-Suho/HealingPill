package com.healingpill.controller;

import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.OrderDTO;
import com.healingpill.dto.ProductVO;
import com.healingpill.service.MemberModifyService;
import com.healingpill.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

    @RequestMapping(value = "/MypageModify", method = RequestMethod.POST)
    public String postMemberModify(MemberDTO memberDTO) throws Exception {
        memberModifyService.memberModify(memberDTO);

        return "redirect:/MypageModify";
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
