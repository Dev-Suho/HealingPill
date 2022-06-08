package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;

public interface MemberLoginDAO {
    String NAMESPACE = "member.";

    public MemberDTO login(MemberDTO memberDTO);
}
