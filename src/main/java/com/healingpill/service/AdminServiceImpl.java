package com.healingpill.service;


import com.healingpill.dao.AdminDAO;
import com.healingpill.dto.AdminDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Inject
    private AdminDAO AdminDAO;

    @Override
    public List<AdminDTO> memberList() throws Exception {
        return AdminDAO.memberList();
    }
}
