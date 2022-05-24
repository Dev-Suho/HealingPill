package com.healingpill.domain.member;

import com.healingpill.config.DB;

import javax.servlet.http.HttpServlet;
import java.sql.*;

public class MemberDao extends HttpServlet {
    public int Join(String mem_id, String mem_password, String mem_username, String mem_phone,String mem_birth_year, Integer mem_birth_month,Integer mem_birth_day,
                    String mem_address, String mem_email, String mem_sex, String mem_is_admin) throws ClassNotFoundException, SQLException {

        String sql = "Insert into member(mem_num, mem_id, mem_password, mem_username, mem_phone, mem_birth_year, mem_birth_month, mem_birth_day, mem_address, mem_email, mem_sex, mem_register_datetime, mem_is_admin)" +
                "VALUES (tmp_seq.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate, ?)";
        Connection conn = DB.getConnection();
        PreparedStatement pstmt = null;

        pstmt = conn.prepareStatement(sql);

        // pstmt를 통해 db 저장
        pstmt.setString(1, mem_id);
        pstmt.setString(2, mem_password);
        pstmt.setString(3, mem_username);
        pstmt.setString(4, mem_phone);
        pstmt.setString(5, mem_birth_year);
        pstmt.setInt(6, mem_birth_month);
        pstmt.setInt(7, mem_birth_day);
        pstmt.setString(8, mem_address);
        pstmt.setString(9, mem_email);
        pstmt.setString(10, mem_sex);
        pstmt.setString(11, mem_is_admin);
        pstmt.executeUpdate();

        int result = pstmt.executeUpdate();
        return result;
    }
}