package com.healingpill.service;


import com.healingpill.dao.AdminDAO;
import com.healingpill.dto.AdminDTO;
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
}
