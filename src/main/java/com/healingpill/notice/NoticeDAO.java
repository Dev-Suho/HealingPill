package com.healingpill.notice;

import com.healingpill.notice.model.vo.Notice;

import javax.imageio.IIOException;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class NoticeDAO {
    private Properties query = new Properties();

    public NoticeDAO() {
        String fileName = NoticeDAO.class.getResource("/sql/notice/notice-query.xml").getPath();
        try {
            query.loadFromXML(new FileInputStream(fileName));
        } catch ( IOException e) {
            e.printStackTrace();
        }
    }
    // 공지사항 목록 조회
    public List<Notice> selectNotice(Connection conn){
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = query.getProperty("selectNotice");
        List<Notice> listNotice = null;

        try {
            listNotice = new ArrayList<>();
            pstmt = conn.prepareStatement(sql);

            rs = pstmt.executeQuery();

            while(rs.next()) {
                listNotice.add(new Notice(
                        rs.getInt("FA_NO")
                        , rs.getString("FA_TITLE")
                        , rs.getString("FA_CONTENT")
                        , rs.getInt("FA_COUNT")
                        , rs.getDate("FA_DATE")
                        , rs.getString("FA_STATUS")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

        }
        return listNotice;
    }
}
