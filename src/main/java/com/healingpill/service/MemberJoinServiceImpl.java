package com.healingpill.service;

import com.healingpill.dao.MemberJoinDAOImpl;
import com.healingpill.dto.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberJoinServiceImpl implements MemberJoinService{

    @Autowired
    MemberJoinDAOImpl memberJoinDAO;

    @Override
    public void MemberJoin(MemberDTO memberDTO) {
        System.out.println("회원가입 서비스 시작");
        memberJoinDAO.memberJoin(memberDTO);
        System.out.println("회원가입 서비스 시작");
    }

    @Override
    public MemberDTO idCheck(String mem_id) throws Exception {
        return memberJoinDAO.idCheck(mem_id);
    }
    //아이디 중복 체크
    @Override
    public int idChk(String mem_id) throws Exception {
        int result = memberJoinDAO.idChk(mem_id);
        return result;
    }


}
