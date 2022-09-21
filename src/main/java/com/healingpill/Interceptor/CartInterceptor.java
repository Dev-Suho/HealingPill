package com.healingpill.Interceptor;

import com.healingpill.dto.MemberDTO;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CartInterceptor implements HandlerInterceptor {


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();

        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");

        if(memberDTO == null) {
            response.sendRedirect("/");
            return false;
        } else {
            return true;
        }
    }

}
