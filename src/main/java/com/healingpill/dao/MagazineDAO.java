package com.healingpill.dao;

import com.healingpill.dto.MagazineDTO;

public interface MagazineDAO {

    String NAMESPACE = "magazine.";

    public MagazineDTO view(MagazineDTO magazineDTO);
}
