package com.healingpill.controller;

import com.healingpill.dto.ProductCategoryVO;
import com.healingpill.dto.ProductVO;
import com.healingpill.dto.ProductViewVO;
import com.healingpill.service.ProductCategoryService;
import com.healingpill.service.ProductListService;
import com.healingpill.service.ProductModifyService;
import com.healingpill.service.ProductRegisterService;
import com.healingpill.utils.UploadFileUtils;
import net.sf.json.JSONArray;
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
@RequestMapping("/admin/*")
public class ProductController {

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
    // 상품 관리 페이지
    @RequestMapping(value = "/product_list", method = RequestMethod.GET)
    public String productListView(Model model) throws Exception {

        List<ProductVO> list = productListService.productList();
        model.addAttribute("list", list);


        return "/admin/product_list";
    }

    // 상품 목록 페이지
    // URL 주소에서 "n"의 값을 찾아서 int pd_num에게 전달
    @RequestMapping(value = "productView", method = RequestMethod.GET)
    public void ProductView(@RequestParam("n") int pd_num, Model model) throws Exception{

        ProductViewVO productVO = productListService.productView(pd_num);
        model.addAttribute("products", productVO);
    }

    //매거진 추가
    @RequestMapping(value = "/cm_magazine")
    public String adminmagazine() { return "/admin/cm_magazine";}

    // 카테고리 등록
    @RequestMapping(value = "/product_add", method = RequestMethod.GET)
    public String getProductRegister(Model model) throws Exception {
        List<ProductCategoryVO> category = null;
        category = productCategoryService.category();

        System.out.println("category = " + category);
        System.out.println("JSONArray = " + JSONArray.fromObject(category));

        // JSONArray를 사용해서 category를 JSON타입으로 변경한 뒤 category라는 변수로 지정
        model.addAttribute("category", JSONArray.fromObject(category));

        return "/admin/product_add";
    }

    // 상품 등록
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

        return "redirect:/admin/product_list";
    }


    // 상품 수정 페이지
    @RequestMapping(value = "/product/modify", method = RequestMethod.GET)
    public String getProductModify(@RequestParam("num") int pd_num, Model model) throws Exception{
        ProductViewVO productVO = productListService.productView(pd_num);
        model.addAttribute("products", productVO);

        List<ProductCategoryVO> category = null;
        category = productCategoryService.category();
        model.addAttribute("category", JSONArray.fromObject(category));

        return "/admin/productModify";
    }

    // 상품 수정
    @RequestMapping(value = "/product/modify", method = RequestMethod.POST)
    public String postProductModify(ProductVO productVO) throws Exception {
        productModifyService.productModify(productVO);

        return "redirect:/admin/product_list";
    }

    // 상품 삭제

    @RequestMapping(value = "/product/delete", method = RequestMethod.POST)
    public String postProductDelete(@RequestParam("num") int pd_num) throws Exception {
        productModifyService.productDelete(pd_num);

        return "redirect:/admin/product_list";
    }
}
