package com.healingpill.service;

import com.healingpill.dto.MagazineDTO;
import com.healingpill.dto.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;

public class MagazineServiceImpl implements MagazineService{

    @Autowired
    MagazineServiceImpl magazineDAO;

    @Override
    public MagazineDTO view(MagazineDTO magazineDTO) {return  magazineDAO.view(magazineDTO);}

    @Override
    public int DateCheck(String mg_no) throws Exception {
        return 0;
    }

    @Override
    public int TitleCheck(String mg_title) throws Exception {
        return 0;
    }

    @Override
    public int ContentCheck(String mg_content) throws Exception {
        return 0;
    }

}
