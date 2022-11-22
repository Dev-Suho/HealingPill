package com.healingpill.dao;

import com.healingpill.dto.OrderDTO;
import com.healingpill.dto.OrderDetailDTO;
import com.healingpill.dto.RecommendDTO;
import org.springframework.core.annotation.Order;

import java.util.List;

public interface MemberDAO {

    String NAMESPACE = "member.";

    // 주문내역
    public List<OrderDTO> myPageOrder(String mem_id) throws Exception;

    //마이 페이지 주문 내역 상품 정보
    public List<OrderDetailDTO> myPageorderDetail(String order_id) throws Exception;


    public List<RecommendDTO> myPageSurvey(String mem_id) throws Exception;
}
