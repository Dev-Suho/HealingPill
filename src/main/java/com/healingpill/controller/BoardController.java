package com.healingpill.controller;

import javax.annotation.Resource;
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
import com.healingpill.utils.UploadFileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.util.List;


@Controller
public class BoardController {

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);


    private final BoardService service;

    @Autowired
    public BoardController(BoardService service) {
        this.service = service;
    }

    @Resource(name = "uploadPath")
    private String uploadPath;

    //게시판 글 삭제

    @RequestMapping(value = "/admin/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("num") int mg_no) throws Exception {
        service.delete(mg_no);
        return "redirect:/admin/cm_magazine";
    }

    // 게시글 조회
    @RequestMapping(value = "/magazine", method = RequestMethod.GET)
    public String mainProductView(Model model) throws Exception {
        List<BoardVO> magazineList = service.magazineView();
        model.addAttribute("magazine", magazineList);
        return "magazine";
    }

    // 게시글 상세 조회
    @RequestMapping(value = "magazineDetail", method = RequestMethod.GET)
    public String read(@ModelAttribute("searchVO") BoardVO serachVO, @RequestParam("mg_no")
                       int mg_no,Model model) throws Exception {
        BoardVO boardContents = service.getBoardContents(mg_no);
        model.addAttribute("boardContents", boardContents);

        return "/magazineDetail";
    }

    // 5. 관리자 매거진 조회
    @RequestMapping(value = "/admin/magazine_list")
    public String adminmagazine_list() { return "/admin/magazine_list";}

    //관리자 게시글 보기
    @RequestMapping(value = "/admin/magazine_list", method = RequestMethod.GET)
    public String ProductView(Model model) throws Exception {

        List<BoardVO> magazineList = service.magazineView();
        model.addAttribute("magazine", magazineList);

        return "admin/magazine_list";
    }

    @RequestMapping(value = "/admin/magazineView", method = RequestMethod.GET)
    public void adminMagazineView(@RequestParam("n") int mg_no, Model model) throws Exception{

        BoardVO boardVO = service.adminMagazineView(mg_no);
        model.addAttribute("magazine", boardVO);
    }

    // 5-1. 관리자 매거진 작성
    @RequestMapping(value = "/admin/magazine_add")
    public String adminmagazine() {
        return "/admin/magazine_add";
    }

    @RequestMapping(value = "admin/write", method = RequestMethod.POST)
    public String write(BoardVO boardVO, MultipartFile file) throws Exception {
        String imgUploadPath = uploadPath + File.separator + "imgUpload";
        String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
        String fileName = null;

        if(file != null) {
            fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
        } else {
            fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
        }
        // 파일의 정보, 원본 파일과 썸네일 저장 경로를 DB에 저장하기 위해 SET
        boardVO.setMg_image(File.separator + "imgUpload" + ymdPath + File.separator + fileName);

        service.write(boardVO);
        return "redirect:/admin/magazine_list";
    }

    // 5-2. 관리자 매거진 삭제
    @RequestMapping(value = "/admin/magazine/delete", method = RequestMethod.GET)
    public String Magazinedelete(@RequestParam("mg_no") int mg_no) throws Exception {
        service.delete(mg_no);

        return "redirect:/admin/magazine_list";
    }

    // 5-5 관리자 매거진 수정 페이지
    @RequestMapping(value = "/admin/magazineModify", method = RequestMethod.GET)
    public String getMagazineModify(@RequestParam("num") int mg_no, Model model) throws Exception {

        BoardVO boardVO = service.adminMagazineView(mg_no);
        model.addAttribute("magazine", boardVO);

        return "/admin/magazineModify";
    }

    // 5-6 관리자 매거진 수정 새로고침

    @RequestMapping(value = "/admin/magazineModify", method = RequestMethod.POST)
    public String postMagazineModify(BoardVO boardVO) throws Exception {
        service.magazineModify(boardVO);

        return "redirect:/admin/magazine_list";
    }
}
