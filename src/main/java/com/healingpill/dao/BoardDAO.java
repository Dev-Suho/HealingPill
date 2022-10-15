package com.healingpill.dao;

import com.healingpill.dto.BoardVO;

import java.util.List;

public interface BoardDAO {
    String NAMESPACE = "BoardMapper.";

    //게시글 작성
    public void write(BoardVO boardVO) throws Exception;


    //게시글 목록
    public List<BoardVO> magazineView() throws Exception;
}
