package com.healingpill.controller;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.healingpill.dto.BoardVO;
import com.healingpill.dto.ProductVO;
import com.healingpill.service.BoardService;
import com.healingpill.service.BoardServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
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


    //게시판 글 삭제

    @RequestMapping(value = "/admin/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("num") int mg_no) throws Exception {
        service.delete(mg_no);
        return "redirect:/admin/cm_magazine";
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

    //관리자 게시글 보기
    @RequestMapping(value = "/admin/magazine_list", method = RequestMethod.GET)
    public String ProductView(Model model) throws Exception {

        List<BoardVO> magazineList = service.magazineView();
        model.addAttribute("magazine", magazineList);

        return "/admin/magazine_list";
    }

    //게시글 삭제
    @WebServlet("/magazine/delete")
    public class delete extends HttpServlet {

        BoardService service = BoardServiceImpl.getInstance();

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            doPost(req,resp);
        }
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            int mg_no = Integer.parseInt(req.getParameter("mg_no"));

            try {
                service.delete(mg_no);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }

            System.out.println(mg_no);

        }
    }
}
