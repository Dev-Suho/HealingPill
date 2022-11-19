package com.healingpill.controller;

import com.healingpill.dto.*;
import com.healingpill.service.*;
import com.healingpill.utils.UploadFileUtils;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

    @Inject
    AdminService adminService;

    // dispatcher-servlet.xml에서 설정한 uploadPath를 추가
    @Resource(name = "uploadPath")
    private String uploadPath;

    // 1. 관리자 메인 페이지
    @RequestMapping(value = "/admin/index")
    public String admin2index() {
        return "/admin/index";
    }

    // 2. 관리자 회원 조회
    @RequestMapping (value = "/admin/customer", method = RequestMethod.GET)
    public String memberList(Model model) throws Exception {

        List<AdminDTO> memberList = adminService.memberList();
        model.addAttribute("memberList", memberList);

        return "/admin/customer";
    }

    // 2-1. 관리자 회원 상세 페이지
    // URL 주소에서 "mem_id" 의 값을 찾아서 mem 에게 전달
    // 해당 주문 내역 불러오기
    // 나만의 영양제 추천 내역 불러오기
    @RequestMapping(value =  "admin/member_detail", method = RequestMethod.GET)
    public void member_detail(@RequestParam("mem") String mem_id , Model model) throws Exception {

        AdminDTO adminDTO = adminService.member_detail(mem_id);
        List<OrderDTO> orderDTO = adminService.member_order(mem_id);

        List<RecommendDTO> recommendDTO = adminService.recommendList(mem_id);

        model.addAttribute("member_detail",  adminDTO);
        model.addAttribute("order", orderDTO);
        model.addAttribute("recommendList", recommendDTO);
    }

    // 3. 관리자 주문 리스트 불러오기
    @RequestMapping (value = "admin/order", method = RequestMethod.GET)
    public String orderList(Model model) throws Exception {

        List<OrderDTO> orderList = adminService.orderList();
        model.addAttribute("orderList", orderList) ;

        return "/admin/order";
    }


    //  3-1. 관리자 주문 상세 페이지 창

    @RequestMapping(value = { "admin/order_detail","admin/order_detail2",}, method = RequestMethod.GET)
    public void orderDetail(@RequestParam("order") String order_id , Model model) throws Exception {

        OrderDTO orderDTO = adminService.orderDetail(order_id);
        List<OrderDetailDTO> orderDetailDTO = adminService.orderDetail2(order_id);

        model.addAttribute("orderDetail", orderDTO);
        model.addAttribute("orderDetail2", orderDetailDTO);
    }
}