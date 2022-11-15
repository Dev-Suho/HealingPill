package com.healingpill.service;


import com.healingpill.dto.BoardVO;

import java.util.List;

public interface BoardService {

    //게시글 작성
    public void write(BoardVO boardVO) throws Exception;

    //게시글 삭제
    public void  delete(int mg_no) throws Exception;

    //게시글 목록 조회
    public  List<BoardVO> magazineView() throws Exception;


    // 게시글 상세조회
    public  BoardVO getBoardContents(int mg_no) throws Exception;

    // 관리자 게시글 상세조회
    public BoardVO adminMagazineView(int mg_no) throws Exception;

    // 관리자 게시글 수정
    public void magazineModify(BoardVO boardVO) throws Exception;
}
