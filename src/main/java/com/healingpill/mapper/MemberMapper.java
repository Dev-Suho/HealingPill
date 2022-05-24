package com.healingpill.mapper;

import com.healingpill.model.MemberDTO;

public interface MemberMapper {

    // 회원가입
    public void memberJoin(MemberDTO memberDTO);
}
