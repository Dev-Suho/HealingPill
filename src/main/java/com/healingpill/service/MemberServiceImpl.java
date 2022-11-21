package com.healingpill.service;

import com.healingpill.dao.MemberDAO;
import com.healingpill.dao.OrderDAO;
import com.healingpill.dto.OrderDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{

    private OrderDAO orderDAO;

    @Inject
    private   MemberDAO memberDAO;
    @Override
    public List<OrderDTO> myPageOrder(String mem_id) throws Exception {
        return memberDAO.myPageOrder(mem_id);
    }

    /*
    @Inject
    private MemberService memberService;
    // Mypage 주문 내역 불러오기


    @Override
    public List<OrderDTO> mem_orderList(OrderDTO dto) throws Exception{
        return memberService.mem_orderList(dto);
    }
     */


}
