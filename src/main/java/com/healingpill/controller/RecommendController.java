package com.healingpill.controller;

import com.healingpill.dto.MemberDTO;
import com.healingpill.dto.RecommendDTO;
import com.healingpill.service.RecommendService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

@Controller
public class RecommendController {

    @Inject
    private RecommendService recommendService;

    // 나만의 영양제 찾기 페이지
    @RequestMapping(value = "/survey")
    public String survey() {
        return "survey";
    }

    // 나만의 영양제 찾기 설문 페이지
    @RequestMapping(value = "/surveyquestion")
    public String surveyQuestion() {
        return "surveyquestion";
    }

    // 나만의 영양제 찾기 결과 페이지
    @RequestMapping(value = "/surveyResult")
    public String surveyResult(@RequestParam String[] checkedValue, Model model, HttpSession session) throws  Exception {
        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");

        List<RecommendDTO> recommendDTO = recommendService.recommendResult(checkedValue);
        List<RecommendDTO> ctgResult = recommendService.ctgResult(checkedValue);

        // 나이 구하기
        Calendar calendar = Calendar.getInstance();
        Integer currentYear = calendar.get(Calendar.YEAR);

        int birthYear = (currentYear - Integer.parseInt(memberDTO.getMem_birth_year()));

        model.addAttribute("memberAge", birthYear);
        model.addAttribute("recommendResult", recommendDTO);
        model.addAttribute("ctgResult", ctgResult);


       System.out.println("recom : " + recommendDTO);

        return "surveyresult";
    }

    @RequestMapping(value = "/saveRecommend")
    public String saveRecommend(HttpServletRequest request, Model model, RecommendDTO recommendDTO) throws Exception{
        String[] mem_id = request.getParameterValues("mem_id");
        String[] ctg_name = request.getParameterValues("ctg_name");
        String[] string_ctg_code = request.getParameterValues("ctg_code");

        int[] ctg_code = new int[string_ctg_code.length];

        for (int i = 0; i < ctg_code.length; i++) {
            ctg_code[i] = Integer.parseInt(string_ctg_code[i]);
        }

        for(int i = 0; i < ctg_code.length; i++){
            recommendDTO.setMem_id(mem_id[i]);
            recommendDTO.setCtg_name(ctg_name[i]);
            recommendDTO.setCtg_code(ctg_code[i]);

            recommendService.saveRecommend(recommendDTO);
        }

        return "recommendComplete";
    }
}
