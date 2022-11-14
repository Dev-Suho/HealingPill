package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;

public interface MemberModifyDAO {
    String NAMESPACE = "member.";

    public void memberModify(MemberDTO memberDTO) throws Exception;

}
