package com.healingpill.dao;

import com.healingpill.model.MemberDTO;

public interface MemberLoginDAO {
    String NAMESPACE = "member.";

    public MemberDTO login(MemberDTO memberDTO);
}
