package com.healingpill.service;


import com.healingpill.dao.MemberModifyDAO;
import com.healingpill.dto.MemberDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class MemberModifyServiceImpl implements MemberModifyService {

    @Inject
    private MemberModifyDAO memberModifyDAO;

    //회원 수정
    @Override
    public void memberModify(MemberDTO memberDTO) throws Exception {
        memberModifyDAO.memberModify(memberDTO);
    }

}
