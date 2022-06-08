package com.healingpill.dao;

import com.healingpill.dto.MemberDTO;

import java.util.List;

public interface MemberFindDAO {
    String NAMESPACE = "member.";

    public int findIdCheck(String mem_phone) throws Exception;

    public int findPasswordCheck(String mem_phone) throws Exception;


    public MemberDTO findId(MemberDTO memberDTO);

    public MemberDTO findPassword(MemberDTO memberDTO);
}
