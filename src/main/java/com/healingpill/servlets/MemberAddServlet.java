package com.healingpill.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;


/*
@WebServlet("/memberJoin")
public class MemberAddServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("<html><head><title>신규 회원 등록</title></head>");
        out.println("<body><h1>신규 회원 등록</h1>");
        out.println("<form action = 'memberJoin' method = 'post'>");
        out.println("아이디 : <input type = 'text' name = 'mem_id'><br>");
        out.println("비밀번호 : <input type = 'text' name = 'mem_password'><br>");
        out.println("이름 : <input type = 'text' name = 'mem_username'><br>");
        out.println("핸드폰 번호 : <input type = 'text' name = 'mem_phone'><br>");
        out.println("생년월일 : <input type = 'text' name = 'mem_birth_year'>");
        out.println(" - <input type = 'text' name = 'mem_birth_month'>");
        out.println(" - <input type = 'text' name = 'mem_birth_day'><br>");
        out.println("주소 : <input type = 'text' name = 'mem_address'><br>");
        out.println("이메일 : <input type = 'text' name = 'mem_email'><br>");
        out.println("성별 : <input type = 'text' name = 'mem_sex'><br>");
        out.println("<input type = 'submit' value = '회원 가입'>");
        out.println("<input type = 'reset' value = '취소'>");
        out.println("</form></body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Connection conn = null;
        PreparedStatement pstmt = null;

        String driver = "oracle.jdbc.driver.OracleDriver";
        String user = "healingpill";
        String pw = "healingpill";
        String url = "jdbc:oracle:thin:@localhost:1521:orcl";

        try {

            Class.forName(driver);
            System.out.println("jdbc driver 로딩 성공");
            conn = DriverManager.getConnection(url, user, pw);
            System.out.println("오라클 연결 성공");

            pstmt = conn.prepareStatement("Insert into member(mem_num, mem_id, mem_password, mem_username, mem_phone, mem_birth_year, mem_birth_month, mem_birth_day, mem_address, mem_email, mem_sex, mem_register_datetime, mem_is_admin)" +
                    "VALUES (tmp_seq.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate, ?)");
            
            // 회원 정보
            String mem_id = req.getParameter("mem_id");
            String mem_password = req.getParameter("mem_password");
            String mem_username = req.getParameter("mem_username");
            String mem_phone = req.getParameter("mem_phone");
            String mem_birth_year = req.getParameter("mem_birth_year");
            int mem_birth_month = Integer.parseInt(req.getParameter("mem_birth_month"));
            int mem_birth_day = Integer.parseInt(req.getParameter("mem_birth_day"));
            String mem_address = req.getParameter("mem_address");
            String mem_email = req.getParameter("mem_email");
            String mem_sex = req.getParameter("mem_sex");
            String mem_is_admin = "admin";

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

            resp.setContentType("text/html; charset=UTF-8");
            PrintWriter out = resp.getWriter();
            out.println("<html><head>");
            out.println("<title>회원 등록</title></head>");
            out.println("<body><p> " + req.getParameter("mem_id") + " - 신규 회원 등록</p></body><html>");

        } catch (Exception e) {
            throw new ServletException(e);

        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}*/
