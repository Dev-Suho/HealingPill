package com.healingpill.dao;

import com.healingpill.dto.AdminDTO;

import java.util.List;

public interface AdminDAO {

    String NAMESPACE = "admin.";

    // 관리자 : index.jsp 회원 리스트 불러오기
    public List<AdminDTO> memberList() throws Exception;

}
