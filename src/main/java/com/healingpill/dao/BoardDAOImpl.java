package com.healingpill.dao;

import com.healingpill.dto.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class BoardDAOImpl implements BoardDAO {
    @Inject
    private SqlSession sqlSession;
    private static String namespace = "BoardMapper";

    //게시글 작성
    @Override
    public void write(BoardVO boardVO) throws Exception {
        sqlSession.insert("BoardMapper.insert", boardVO);
    }

    //게시글 목록
    @Override
    public List<BoardVO> magazineView() throws Exception {
        return sqlSession.selectList(NAMESPACE + "magazinetList");
    }
}
