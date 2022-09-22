package com.healingpill.dao;

import oracle.jdbc.driver.DMSFactory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


//https://maxtime1004.tistory.com/68

public class MagazineDDAO {
    private PreparedStatement pstmt;
    private Connection con;
    private DataSource dataFactory;
    public MagazineDDAO() {
        try {
            Context ctx = new InitialContext();
            Context envContext = (Context) ctx.lookup("java:/comp/env");
            dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List listmembers(MagazineVO memberVO) {
        List<MagazineVO> membersList = new ArrayList<MagazineVO>();
        String num = memberVO.getMg_no();
        try {
            con = dataFactory.getConnection();
            String query = "select * from MAGAZINE";

            if((num != null && num.length() != 0)) {
                query += " where name=?";
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, num);
            }else {
                pstmt = con.prepareStatement(query);
            }
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()) {
                String mg_title = rs.getString("MG_TITLE");
                String mg_image = rs.getString("MG_IMAGE");
                String mg_no = rs.getString("MG_NO");
                String mg_content = rs.getString("MG_CONTENT");
                String mg_datetime = rs.getString("MG_DATETIME");

                MagazineVO vo = new MagazineVO();
                vo.setMg_title(mg_title);
                vo.setMg_image(mg_image);
                vo.setMg_no(mg_no);
                vo.setMg_content(mg_content);
                vo.setMg_datetime(mg_datetime);

                membersList.add(vo);
            }
            rs.close();
            pstmt.close();
            con.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return membersList;
    }
}

