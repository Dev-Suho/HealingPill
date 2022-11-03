package com.healingpill.controller;


import com.healingpill.dto.AdminDTO;
import com.healingpill.dto.ProductCategoryVO;
import com.healingpill.dto.ProductVO;
import com.healingpill.dto.ProductViewVO;
import com.healingpill.service.*;
import com.healingpill.utils.UploadFileUtils;
import net.sf.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/admin2/*")
public class AdminController2 {

    @Inject
    AdminService adminService;
    @Inject
    ProductCategoryService productCategoryService;
    @Inject
    ProductRegisterService productRegisterService;
    @Inject
    ProductListService productListService;
    @Inject
    ProductModifyService productModifyService;

    // dispatcher-servlet.xml에서 설정한 uploadPath를 추가
    @Resource(name = "uploadPath")
    private String uploadPath;

    // 1. 메인 페이지
    @RequestMapping(value = "/admin2/index")
    public String admin2index() {
        return "/admin2/index";
    }

    // 2. 회원 조회
    @RequestMapping (value = "/admin2/customer", method = RequestMethod.GET)
    public String memberList(Model model) throws Exception {

        List<AdminDTO> memberList = adminService.memberList();
        model.addAttribute("memberList", memberList);

        return "/admin2/customer";
    }

    // 2-1. 회원 상세 페이지
    // URL 주소에서 "num" 의 값을 찾아서 int mem_num 에게 전달
    @RequestMapping(value = "admin2/member_detail", method = RequestMethod.GET)
    public void member_detail(@RequestParam("mem") int mem_num , Model model ) throws Exception {

        AdminDTO adminDTO = adminService.member_detail(mem_num);

        model.addAttribute("member_detail",  adminDTO);
    }

    // 3. 주문 조회
    @RequestMapping(value = "/admin2/order")
    public String admin2order() { return "/admin2/order"; }

    // 4. 상품 관리 페이지
    @RequestMapping(value = "/product_list", method = RequestMethod.GET)
    public String productListView(Model model) throws Exception {

        List<ProductVO> list = productListService.productList();
        model.addAttribute("list", list);


        return "/admin2/product_list";
    }

    // 4. 상품 조회
    // URL 주소에서 "n"의 값을 찾아서 int pd_num에게 전달
    @RequestMapping(value = "productView", method = RequestMethod.GET)
    public void ProductView(@RequestParam("n") int pd_num, Model model) throws Exception{

        ProductViewVO productVO = productListService.productView(pd_num);
        model.addAttribute("products", productVO);
    }

    // 4-1. 카테고리 등록
    @RequestMapping(value = "/product_add", method = RequestMethod.GET)
    public String getProductRegister(Model model) throws Exception {
        List<ProductCategoryVO> category = null;
        category = productCategoryService.category();

        System.out.println("category = " + category);
        System.out.println("JSONArray = " + JSONArray.fromObject(category));

        // JSONArray를 사용해서 category를 JSON타입으로 변경한 뒤 category라는 변수로 지정
        model.addAttribute("category", JSONArray.fromObject(category));

        return "/admin2/product_add";
    }

    // 4-2. 상품 등록
    @RequestMapping(value = "/product_add", method = RequestMethod.POST)
    public String postProductRegister(ProductVO productVO, MultipartFile file) throws Exception {
        String imgUploadPath = uploadPath + File.separator + "imgUpload";
        String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
        String fileName = null;

        // UploadFileUtils 클래스를 사용해 폴더를 생성한 후 원본 파일과 썸네일을 저장
        if(file != null) {
            fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
        } else {
            fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
        }

        // 파일의 정보, 원본 파일과 썸네일 저장 경로를 DB에 저장하기 위해 SET
        productVO.setPd_mainImage(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
        productVO.setPd_subImage(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);

        productRegisterService.register(productVO);

        return "redirect:/admin2/product_list";
    }


    // 4-3. 상품 수정 페이지
    @RequestMapping(value = "/product/modify", method = RequestMethod.GET)
    public String getProductModify(@RequestParam("num") int pd_num, Model model) throws Exception{
        ProductViewVO productVO = productListService.productView(pd_num);
        model.addAttribute("products", productVO);

        List<ProductCategoryVO> category = null;
        category = productCategoryService.category();
        model.addAttribute("category", JSONArray.fromObject(category));

        return "/admin2/productModify";
    }

    // 4-4. 상품 수정
    @RequestMapping(value = "/product/modify", method = RequestMethod.POST)
    public String postProductModify(ProductVO productVO) throws Exception {
        productModifyService.productModify(productVO);

        return "redirect:/admin2/product_list";
    }

    // 4-5. 상품 삭제

    @RequestMapping(value = "/product/delete", method = RequestMethod.POST)
    public String postProductDelete(@RequestParam("num") int pd_num) throws Exception {
        productModifyService.productDelete(pd_num);

        return "redirect:/admin2/product_list";
    }
}
