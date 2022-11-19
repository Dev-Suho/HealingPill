package com.healingpill.dao;

import com.healingpill.dto.AdminDTO;
import com.healingpill.dto.OrderDTO;
import com.healingpill.dto.OrderDetailDTO;
import com.healingpill.dto.RecommendDTO;
import com.sun.org.apache.xpath.internal.operations.Or;
import org.apache.commons.collections.functors.ExceptionPredicate;

import java.util.List;

public interface AdminDAO {

    String NAMESPACE = "admin.";

    // 관리자 : index.jsp 회원 리스트 불러오기
    public List<AdminDTO> memberList() throws Exception;

    // memberList 에 member 누르면 뜨는 회원 상세정보
    public AdminDTO member_detail(String mem_id) throws Exception;

    // member_detail 에 order 주문 내역
    public List<OrderDTO> member_order(String mem_id) throws Exception;

    // member_detail 에 맞춤 영양제 내역
    public List<RecommendDTO> recommendList(String mem_id) throws Exception;

    //order.jsp 주문 리스트 불러오기
    public List<OrderDTO> orderList() throws Exception;

    // ORDER에 ORDER_ID 값으로 주문 상세정보 ( 회원 )
    public OrderDTO orderDetail(String order_id) throws Exception;

    // ORDER에 ORDER_ID 값으로 주문 상세정보 ( 제품 )
    public List<OrderDetailDTO> orderDetail2(String order_id) throws Exception;



}
