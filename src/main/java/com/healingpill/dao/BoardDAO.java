package com.healingpill.dao;

import com.healingpill.dto.BoardVO;

import java.util.List;

public interface BoardDAO {
    String NAMESPACE = "BoardMapper.";

    //게시글 작성
    public void write(BoardVO boardVO) throws Exception;

    //게시글 삭제
    public void delete(int mg_no) throws Exception;

    //게시글 목록
    public List<BoardVO> magazineView() throws Exception;

    //게시글 디테일
    public BoardVO read(int mg_no) throws Exception;
}
