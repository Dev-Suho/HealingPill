package com.healingpill.controller;

import javax.inject.Inject;

import com.healingpill.dto.BoardVO;
import com.healingpill.dto.ProductVO;
import com.healingpill.service.BoardService;
import com.healingpill.service.BoardServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


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

    /*
    @RequestMapping(value = "magazine2", method = RequestMethod.GET)
    public String magazineGET2(@RequestParam("n") int mg_no, Model model) throws Exception{
        //logger.debug("magazine 페이지 이동");

        //BoardVO boardVO = BoardService.magazineView(mg_no);
        //model.addAttribute("board",boardVO);

        return "magazine2";
    }
     */

    /*
    @GetMapping
    public String main(Model model) throws Exception {
        model.addAttribute("magazine", service.getMagazineList());

        return "magazine2";
    }
     */
    /*
    @GetMapping("magazine2")
    public void magazineListGet(Model model) throws Exception {
        model.addAttribute("magazine",service.getMagazineList());
    }

     */
    @RequestMapping(value = "/magazine2", method = RequestMethod.GET)
    public String mainProductView(Model model) throws Exception {

        List<BoardVO> magazineList = service.magazineView();
        model.addAttribute("magazine", magazineList);

        return "magazine2";
    }

    //게시글 디테일
    @RequestMapping(value = "/magazineDetail", method = RequestMethod.GET)
    public String  read(BoardVO boardVO,Model model) throws Exception {
        logger.info("read");
        model.addAttribute("read",service.read(boardVO.getMg_no()));
        return "magazineDetail";
    }
}
