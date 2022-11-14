package com.healingpill.service;

import com.healingpill.dto.MemberDTO;

public interface MemberModifyService {
    
    //회원 수정
    public void memberModify(MemberDTO memberDTO) throws Exception;
}
