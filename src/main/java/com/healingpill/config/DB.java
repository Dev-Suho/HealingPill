package com.healingpill.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB {

    public static Connection getConnection() {

        try {
            //동적 로딩
            Class.forName("oracle.jdbc.driver.OracleDriver");
            System.out.println("Jdbc Driver 로딩 성공");

            //DBMS에 id와 pw를 인증받고 DB를 핸들링 할 수 있는 Connection 객체를 생성
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "healingpill", "healingpill");
            System.out.println("Oracle Database 연결 성공");

            return conn;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void close(Connection conn, PreparedStatement pstmt) {
        try {
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
        try {
            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
