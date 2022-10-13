package com.healingpill.dao;

import java.util.List;

public interface MagazineDAO {

    String NAMESPACE = "magazine.";

    // 매거진 페이지 글 조회
    public List<MagazineVO> magzineView() throws Exception;
}
