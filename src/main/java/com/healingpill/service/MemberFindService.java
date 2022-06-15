package com.healingpill.service;

import com.healingpill.dto.MemberDTO;

import java.util.List;

public interface MemberFindService {


    public int findIdCheck(String mem_phone) throws Exception;

    public int findPasswordCheck(String mem_phone) throws Exception;

    MemberDTO findId(MemberDTO memberDTO);

    MemberDTO findPassword(MemberDTO memberDTO);
}
