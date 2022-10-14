package com.healingpill.dao;

import com.healingpill.dto.BoardVO;

public interface BoardDAO {

    //게시글 작성
    public void write(BoardVO boardVO) throws Exception;
}
