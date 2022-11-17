package com.healingpill.service;

import com.healingpill.dto.OrderDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{

    @Inject
    private MemberService memberService;
    // Mypage 주문 내역 불러오기
    @Override
    public List<OrderDTO> mem_orderList(OrderDTO dto) throws Exception{
        return memberService.mem_orderList(dto);
    }
}
