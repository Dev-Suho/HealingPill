package com.healingpill.service;
import com.healingpill.dao.BoardDAO;
import com.healingpill.dto.BoardVO;
import org.springframework.stereotype.Service;
import javax.inject.Inject;
import java.util.List;
@Service
public class BoardServiceImpl implements BoardService {

    private static final BoardService boardService = new BoardServiceImpl();
    public static final BoardService getInstance() {
        return boardService;
    }
    @Inject
    private BoardDAO dao;

    //게시글 작성
    @Override
    public void write(BoardVO boardVO) throws Exception {
        dao.write(boardVO);
    }
    //게시글 삭제
    @Override
    public void  delete(int mg_no) throws Exception {
        dao.delete(mg_no);
    }
    //게시글 조회
    @Override
    public List<BoardVO> magazineView() throws Exception {
        return dao.magazineView();
    }

    //게시글 상세 보기
    @Override
    public BoardVO getBoardContents(int mg_no)  throws Exception{
        return dao.getBoardContents(mg_no);
    }


    // 관리자 게시글 상세조회
    @Override
    public BoardVO adminMagazineView(int mg_no) throws Exception {
        return dao.adminMagazineView(mg_no);
    };

    // 관리자 게시글 수정
    @Override
    public void magazineModify(BoardVO boardVO) throws Exception {
        dao.magazineModify(boardVO);
    }
<<<<<<<<< Temporary merge branch 1
}
