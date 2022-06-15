package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;

public interface MemberJoinDAO {

    String NAMESPACE = "member.";

    public void memberJoin(MemberDTO memberDTO);

    public MemberDTO idCheck(String mem_id) throws Exception;
}
