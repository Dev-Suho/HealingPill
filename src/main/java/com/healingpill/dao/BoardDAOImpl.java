package com.healingpill.dao;

import com.healingpill.dto.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class BoardDAOImpl implements BoardDAO {
    @Inject
    private SqlSession sqlSession;

    //게시글 작성
    @Override
    public void write(BoardVO boardVO) throws Exception {
        sqlSession.insert("BoardMapper.insert", boardVO);
    }
}
