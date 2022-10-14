package com.healingpill.service;

import com.healingpill.dto.BoardVO;

public interface BoardService {

    //게시글 작성
    public void write(BoardVO boardVO) throws Exception;
}
