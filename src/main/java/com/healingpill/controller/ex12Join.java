package com.healingpill.controller;

import com.healingpill.domain.member.MemberDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ex12Join")
public class ex12Join extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // 회원 정보
        String mem_id = request.getParameter("mem_id");
        String mem_password = request.getParameter("mem_password");
        String mem_username = request.getParameter("mem_username");
        String mem_phone = request.getParameter("mem_phone");
        String mem_birth_year = request.getParameter("mem_birth_year");
        int mem_birth_month = Integer.parseInt(request.getParameter("mem_birth_month"));
        int mem_birth_day = Integer.parseInt(request.getParameter("mem_birth_day"));
        String mem_address = request.getParameter("mem_address");
        String mem_email = request.getParameter("mem_email");
        String mem_sex = request.getParameter("mem_sex");
        String mem_is_admin = "admin";

        MemberDao dao = new MemberDao();

        int result;
        try {
            result = dao.Join(mem_id, mem_password, mem_username, mem_phone, mem_birth_year, mem_birth_month, mem_birth_day, mem_address, mem_email, mem_sex, mem_is_admin);
            if(result > 0){
                System.out.println("회원 정보 - 아이디 : " + mem_id + ",\t 비밀번호 : " + mem_password + ",\t 이름 : " + mem_username);
                //response.sendRedirect("ex12Login.jsp"); //Now They made "ex12JoinSuccess.jsp". We need to pass through that page.
                RequestDispatcher dis = request.getRequestDispatcher("/ex12JoinSuccess");
                request.setAttribute("mem_id", mem_id);
                request.setAttribute("mem_password", mem_password);
                request.setAttribute("mem_username", mem_username);
                request.setAttribute("mem_phone", mem_phone);
                request.setAttribute("mem_birth_year", mem_birth_year);
                request.setAttribute("mem_birth_month", mem_birth_month);
                request.setAttribute("mem_birth_day", mem_birth_day);
                request.setAttribute("mem_address", mem_address);
                request.setAttribute("mem_email", mem_email);
                request.setAttribute("mem_sex", mem_sex);
                request.setAttribute("mem_is_admin", mem_is_admin);

                dis.forward(request, response);
            } else {
                System.out.println(result + " 회원가입 오류 ");
                response.sendRedirect("/ex12LoginFail");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}