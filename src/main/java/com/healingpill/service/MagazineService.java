package com.healingpill.service;

import com.healingpill.dto.MagazineDTO;

public interface MagazineService {
    public MagazineDTO view(MagazineDTO magazineDTO);

    public int DateCheck(String mg_no)  throws Exception;

    public int TitleCheck(String mg_title) throws  Exception;

    public int ContentCheck(String mg_content) throws  Exception;
}
