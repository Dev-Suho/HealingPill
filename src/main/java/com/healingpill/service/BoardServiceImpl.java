package com.healingpill.service;

import com.healingpill.dao.BoardDAO;
import com.healingpill.dto.BoardVO;
import com.healingpill.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {


    @Inject
    private BoardDAO dao;

    //게시글 작성
    @Override
    public void write(BoardVO boardVO) throws Exception {
        dao.write(boardVO);
    }

    //게시글 조회
    @Override
    public List<BoardVO> magazineView() throws Exception {
        return dao.magazineView();
    }
}
