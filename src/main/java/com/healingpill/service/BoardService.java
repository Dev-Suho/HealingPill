package com.healingpill.service;

import com.healingpill.dao.BoardDAO;
import com.healingpill.dto.BoardVO;

import java.util.List;

public interface BoardService {

    //게시글 작성
    public void write(BoardVO boardVO) throws Exception;

    //게시글 조회
    public List<BoardVO> magazineView() throws Exception;

}
