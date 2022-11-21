package com.healingpill.service;

import com.healingpill.dao.MemberDAO;
import com.healingpill.dao.OrderDAO;
import com.healingpill.dto.OrderDTO;
import com.healingpill.dto.OrderDetailDTO;
import com.healingpill.dto.RecommendDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{


    @Inject
    private   MemberDAO memberDAO;
    @Override
    public List<OrderDTO> myPageOrder(String mem_id) throws Exception {

        return memberDAO.myPageOrder(mem_id);

    }
    //마이 페이지 주문 내역 상품 정보
    public List<OrderDetailDTO> myPageorderDetail(String order_id) throws Exception{
        return memberDAO.myPageorderDetail(order_id);
    }

    @Override
    public List<RecommendDTO> myPageSurvey(String mem_id) throws Exception {
        return memberDAO.myPageSurvey(mem_id);
    }
}
