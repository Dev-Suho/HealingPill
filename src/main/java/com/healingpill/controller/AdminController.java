package com.healingpill.controller;


import com.healingpill.dto.AdminDTO;
import com.healingpill.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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


}
