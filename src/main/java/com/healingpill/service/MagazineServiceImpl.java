package com.healingpill.service;

import org.springframework.beans.factory.annotation.Autowired;

public class MagazineServiceImpl implements MagazineService{

    @Autowired
    MagazineServiceImpl magazineDAO;

    @Override
    public MagazineDTO view(MagazineDTO magazineDTO) {return  magazineDAO.view(magazineDTO);}

}
