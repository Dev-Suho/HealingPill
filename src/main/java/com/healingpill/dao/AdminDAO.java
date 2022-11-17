package com.healingpill.dao;

import com.healingpill.dto.AdminDTO;
import com.healingpill.dto.OrderDTO;

import java.util.List;

public interface AdminDAO {

    String NAMESPACE = "admin.";

    // 관리자 : index.jsp 회원 리스트 불러오기
    public List<AdminDTO> memberList() throws Exception;

    // memberList 에 member 누르면 뜨는 회원 상세정보
    public AdminDTO member_detail(int mem_num) throws Exception;
    
    //order.jsp 주문 리스트 불러오기
    public List<OrderDTO> orderList() throws Exception;
}
