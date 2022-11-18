package com.healingpill.service;

import com.healingpill.dto.MemberDTO;

public interface MemberModifyService {

    //회원 수정 페이지
    public MemberDTO myPageModifyView(int mem_num) throws Exception;
    
    //회원 수정
    public void myPageModify(MemberDTO memberDTO) throws Exception;

    //회원 탈퇴
    public void memberDelete(int mem_num) throws Exception;
}
