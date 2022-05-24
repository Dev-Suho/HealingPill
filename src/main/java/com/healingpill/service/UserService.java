package com.healingpill.service;
/*
import com.healingpill.domain.user.User;
import com.healingpill.domain.user.UserDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserService {
    private UserDao userDao;

    public UserService() {
        userDao = new UserDao();
    }

    // 회원가입
    public int userJoin(HttpServletRequest request, HttpServletResponse response) {

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


        User dto = new User(mem_id, mem_password, mem_username, mem_phone, mem_birth_year, mem_birth_month, mem_birth_day, mem_address, mem_email, mem_sex, mem_is_admin);

        int result = userDao.save(dto);

        return result;
    }
}

 */