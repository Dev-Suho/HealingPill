package com.healingpill.service;

import com.healingpill.dto.MemberDTO;

public interface MemberJoinService {
    public void MemberJoin(MemberDTO memberDTO);

    public MemberDTO idCheck(String mem_id) throws Exception;

}
