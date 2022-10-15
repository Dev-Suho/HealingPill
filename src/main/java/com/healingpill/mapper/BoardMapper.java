package com.healingpill.mapper;

import com.healingpill.dto.BoardVO;

import java.util.List;

public interface BoardMapper {

    //게시글 목록
    public List<BoardVO> getMagazineView();
}
