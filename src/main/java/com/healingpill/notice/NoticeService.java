package com.healingpill.notice;

import com.healingpill.notice.model.vo.Notice;

import java.sql.Connection;
import java.util.List;

import static com.healingpill.config.DB.close;
import static com.healingpill.config.DB.getConnection;

public class NoticeService {
    private NoticeDAO nd = new NoticeDAO();

    //1.게시판 목록 조회
    public List<Notice> selectNotice() {
        Connection conn = getConnection();
        List<Notice> listNotice = nd.selectNotice(conn);
        //close(conn);
        return  listNotice;
    }
}
