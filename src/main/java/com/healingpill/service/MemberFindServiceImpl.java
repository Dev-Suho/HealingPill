package com.healingpill.service;

import com.healingpill.dao.MemberFindDAO;
import com.healingpill.dto.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberFindServiceImpl implements MemberFindService {
    @Autowired
    private MemberFindDAO memberFindDAO;

    @Override
    public int findIdCheck(String mem_phone) throws Exception {
        return memberFindDAO.findIdCheck(mem_phone);
    }


    @Override
    public int findPasswordCheck(String mem_phone) throws Exception {
        return memberFindDAO.findPasswordCheck(mem_phone);
    }

    @Override
    public MemberDTO findId(MemberDTO memberDTO) {
        return memberFindDAO.findId(memberDTO);
    }

    @Override
    public MemberDTO findPassword(MemberDTO memberDTO) {
        return memberFindDAO.findPassword(memberDTO);
    }
}
