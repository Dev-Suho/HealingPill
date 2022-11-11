package com.healingpill.controller;


import com.healingpill.dto.AdminDTO;
import com.healingpill.dto.OrderDTO;
import com.healingpill.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import java.util.List;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

    @Inject
    AdminService adminService;

    //index.jsp : 회원 리스트 불러오기
    @RequestMapping (value = "/admin/index", method = RequestMethod.GET)
    public String memberList(Model model) throws Exception {

        List<AdminDTO> memberList = adminService.memberList();
        model.addAttribute("memberList", memberList) ;

        return "/admin/index";
    }

    
    //회원 상세 페이지
    // URL 주소에서 "num" 의 값을 찾아서 int mem_num 에게 전달
    @RequestMapping(value = "admin/member_detail", method = RequestMethod.GET)
    public void member_detail(@RequestParam("mem") int mem_num , Model model ) throws Exception {

        AdminDTO adminDTO = adminService.member_detail(mem_num);

        model.addAttribute("member_detail",  adminDTO);
    }

    //order.jsp : 주문 리스트 불러오기
    @RequestMapping (value = "/admin2/order", method = RequestMethod.GET)
    public String orderList(Model model) throws Exception {

        List<OrderDTO> orderList = adminService.orderList();
        model.addAttribute("orderList", orderList) ;

        return "order2";
    }





}
