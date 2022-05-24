package com.healingpill.service;

import com.healingpill.dao.MemberLoginDAO;
import com.healingpill.model.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service    // service bean으로 등록
public class MemberLoginServiceImpl implements MemberLoginService {

    @Autowired
    private MemberLoginDAO memberLoginDAO;

    @Override
    public MemberDTO login(MemberDTO memberDTO) {
        return memberLoginDAO.login(memberDTO);
    }
}
