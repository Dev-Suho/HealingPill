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

    //게시글 작성
    @Override
    public void write(BoardVO boardVO) throws Exception {
        sqlSession.insert("BoardMapper.insert", boardVO);
    }

    //게시글 삭제
    @Override
    public void delete(int mg_no) throws Exception
    {
        //sqlSession.delete("BoardMapper.delete", mg_no);
        sqlSession.delete(NAMESPACE + "delete", mg_no);
    }

    //게시글 목록
    @Override
    public List<BoardVO> magazineView() throws Exception {
        return sqlSession.selectList(NAMESPACE + "magazineList");
    }

    //게시글 디테일
    @Override
    public BoardVO getBoardContents(int mg_no) throws Exception{
        return  sqlSession.selectOne("BoardMapper.getBoardContents", mg_no);
    }

    // 관리자 게시글 상세조회
    public BoardVO adminMagazineView(int mg_no) throws Exception {
        return sqlSession.selectOne(NAMESPACE + "adminMagazineView", mg_no);
    };

    // 관리자 게시글 수정

    @Override
    public void magazineModify(BoardVO boardVO) throws Exception {
        sqlSession.update(NAMESPACE + "magazineModify", boardVO);
    }
}