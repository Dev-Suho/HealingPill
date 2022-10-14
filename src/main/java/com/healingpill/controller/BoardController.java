package com.healingpill.controller;

import javax.inject.Inject;

import com.healingpill.dto.BoardVO;
import com.healingpill.service.BoardService;
import com.healingpill.service.BoardServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class BoardController {

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

    @Inject
    BoardService service;

    /*
    //게시판 글 작성 화면
    @RequestMapping(value = "/admin/cm_magazine", method = RequestMethod.GET)
    public void writeView() throws Exception {
        logger.info("cm_magazine");
    }
    */
    //게시판 글 작성
    @RequestMapping(value = "/write", method = RequestMethod.POST)
    public String write(BoardVO boardVO) throws Exception {
        logger.info("write");
        service.write(boardVO);
        return "redirect:/";
    }
}
