package com.healingpill.service;


import com.healingpill.dao.MemberModifyDAO;
import com.healingpill.dto.MemberDTO;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class MemberModifyServiceImpl implements MemberModifyService {

    @Inject
    private MemberModifyDAO memberModifyDAO;


    // 회원 수정 페이지
    @Override
    public MemberDTO myPageModifyView(int mem_num) throws Exception {
        return memberModifyDAO.myPageModifyView(mem_num);
    }

    //회원 수정

    @Override
    public void myPageModify(MemberDTO memberDTO) throws Exception {
        memberModifyDAO.myPageModify(memberDTO);
    }

    //회원 탈퇴

    @Override
    public void memberDelete(int mem_num) throws Exception
    {
        memberModifyDAO.memberDelete(mem_num);
    }
}
