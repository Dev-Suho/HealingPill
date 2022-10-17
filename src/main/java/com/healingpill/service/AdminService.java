package com.healingpill.service;

import com.healingpill.dto.AdminDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AdminService {

    // 관리자 : index.jsp 회원 리스트 불러오기
    public List<AdminDTO> memberList() throws Exception;
    
    // 회원 상세정보 불러오기
    public AdminDTO member_detail(AdminDTO dto) throws Exception;
}

