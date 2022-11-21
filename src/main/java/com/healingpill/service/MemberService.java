package com.healingpill.service;

import com.healingpill.dto.OrderDTO;

import java.util.List;

public interface MemberService {


    // 주문내역
    public List<OrderDTO> myPageOrder(String mem_id) throws Exception;
}
