package com.healingpill.service;


import com.healingpill.dao.AdminDAO;
import com.healingpill.dao.OrderDAO;
import com.healingpill.dto.AdminDTO;
import com.healingpill.dto.OrderDTO;
import com.healingpill.dto.OrderDetailDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Inject
    private AdminDAO AdminDAO;

    //index.jsp 회원 목록 불러오기
    @Override
    public List<AdminDTO> memberList() throws Exception {
        return AdminDAO.memberList();
    }
    //회원 상세정보 불러오기
    @Override
    public AdminDTO member_detail(int mem_num) throws Exception {
        return AdminDAO.member_detail(mem_num);
    }
    // 회원 상세정보 - > 주문내역 불러오기
    public OrderDTO member_order(String mem_id) throws Exception {
        return AdminDAO.member_order(mem_id);
    }
    @Override
    public List<OrderDTO> orderList() throws Exception {
        return AdminDAO.orderList();
    }

    @Override
    public OrderDTO orderDetail(String order_id) throws Exception {
        return AdminDAO.orderDetail(order_id);
    }
    @Override
    public OrderDetailDTO orderDetail2(String order_id) throws Exception {
        return AdminDAO.orderDetail2(order_id);
    }
}
