package com.healingpill.controller;

import com.healingpill.dto.*;
import com.healingpill.service.MemberLoginService;
import com.healingpill.service.OrderService;
import com.healingpill.service.ProductListService;
import com.healingpill.service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

@Controller
public class OrderController {
    @Inject
    OrderService orderService;

    @Inject
    ShopService shopService;

    @Inject
    ProductListService productListService;

    @Inject
    MemberLoginService memberLoginService;

    @ResponseBody
    @RequestMapping(value = "/confirm", method = RequestMethod.POST)
    public int viewCheckout(HttpSession session) throws Exception{
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");


        int result = 0;

        if(memberDTO == null) {
            return 1;
        }

        return result;
    }

    // 단일 상품 주문 페이지
    @RequestMapping(value = "/orderPage", method = RequestMethod.GET)
    public String orderPage(@RequestParam("itemId") int pd_num, Model model, HttpSession session, OrderDetailDTO orderDetailDTO) throws Exception {
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");

        ProductViewVO productViewVO = productListService.productView(pd_num);
        model.addAttribute("products", productViewVO);


        return "checkout";
    }

    // 카트 상품 주문 페이지
    @RequestMapping(value = "/orderList", method = RequestMethod.GET)
    public String orderListPage(Model model, HttpSession session) throws Exception{
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
        if(memberDTO != null) {
            String mem_id = memberDTO.getMem_id();
            List<CartListVO> cartList = shopService.getCartList(mem_id);
            model.addAttribute("cartList", cartList);
        }
        return "checkoutList";
    }

    // 주문 완료 페이지
    @RequestMapping(value = "/orderComplete", method = RequestMethod.GET)
    public String viewOrderComplete(){
        return "checkoutComplete";
    }


    @RequestMapping(value = "/orderRequest", method = RequestMethod.POST)
    public String order(HttpSession session, OrderDTO orderDTO, OrderDetailDTO orderDetailDTO) throws Exception {
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
        String mem_id = memberDTO.getMem_id();

        Calendar cal = Calendar.getInstance();
        int year = cal.get(Calendar.YEAR);
        String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
        String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
        String subNum = "";

        for(int i = 1; i <= 6; i++){
            subNum += (int)(Math.random() * 10);
        }

        String order_id = ymd + "_" + subNum;

        orderDTO.setOrder_id(order_id);
        orderDTO.setMem_id(mem_id);

        // 포인트 적립
        int totalPrice = orderDTO.getTotalPrice();
        int savePoint = (int)(totalPrice * 0.05);
        orderDTO.setTotalPrice(totalPrice);
        orderDTO.setSavePoint(savePoint);

        orderService.usePoint(orderDTO);
        orderService.savePoint(orderDTO);
        orderService.orderInfo(orderDTO);

        orderDetailDTO.setOrder_id(order_id);
        orderDetailDTO.setMem_id(mem_id);

        orderService.orderInfo_Details(orderDetailDTO);
        orderService.orderCount(orderDetailDTO);
        orderService.deleteCart(orderDTO);

        MemberDTO res = memberLoginService.login(memberDTO);
        session.setAttribute("member", res);
        session.setMaxInactiveInterval(3600);

        return "checkoutComplete";
    }

    @RequestMapping(value = "/orderProduct", method = RequestMethod.POST)
    public String singleOrder(HttpSession session, OrderDTO orderDTO, OrderDetailDTO orderDetailDTO) throws Exception {
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
        String mem_id = memberDTO.getMem_id();

        Calendar cal = Calendar.getInstance();
        int year = cal.get(Calendar.YEAR);
        String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
        String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
        String subNum = "";

        for(int i = 1; i <= 6; i++){
            subNum += (int)(Math.random() * 10);
        }

        String order_id = ymd + "_" + subNum;

        orderDTO.setOrder_id(order_id);
        orderDTO.setMem_id(mem_id);

        int totalPrice = (orderDetailDTO.getPd_price() * orderDetailDTO.getOrder_stock());
        int savePoint = (int)(totalPrice * 0.05);

        orderDTO.setTotalPrice(totalPrice);
        orderDTO.setSavePoint(savePoint);
        orderService.usePoint(orderDTO);
        orderService.savePoint(orderDTO);

        orderService.orderInfo(orderDTO);


        orderDetailDTO.setOrder_id(order_id);
        orderDetailDTO.setMem_id(mem_id);
        orderService.orderProduct(orderDetailDTO);

        // 세션 재생성
        MemberDTO res = memberLoginService.login(memberDTO);
        session.setAttribute("member", res);
        session.setMaxInactiveInterval(3600);

        return "checkoutComplete";
    }

}
