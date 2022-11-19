package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;

public interface MemberJoinDAO {

    String NAMESPACE = "member.";

    public void memberJoin(MemberDTO memberDTO);

    public MemberDTO idCheck(String mem_id) throws Exception;

    // 아이디 중복 체크
    public int idChk(String mem_id) throws Exception;
}
