package com.healingpill.notice.controller;

import com.healingpill.notice.NoticeService;
import com.healingpill.notice.model.vo.Notice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/notice/list")
public class NoticeListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public NoticeListServlet() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Notice> listNotice = new NoticeService().selectNotice();

        if(listNotice != null) {
            request.setAttribute("listNotice", listNotice);
            request.getRequestDispatcher("/WEB-INF/views/admin/noticeListView.jsp").forward(request,response);
        }
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
