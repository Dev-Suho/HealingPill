package com.healingpill.service;

import com.healingpill.dao.BoardDAO;
import com.healingpill.dao.BoardDAOImpl;
import com.healingpill.dto.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class BoardServiceImpl implements BoardService {

    @Inject
    private BoardDAO dao;

    //게시글 작성
    @Override
    public void write(BoardVO boardVO) throws Exception {
        dao.write(boardVO);
    }
}
