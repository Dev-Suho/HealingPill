package com.healingpill.dao;

import com.healingpill.dto.RecommendDTO;

import java.util.HashMap;
import java.util.List;

public interface RecommendDAO {

    String NAMESPACE = "recommend.";

    // 영양제 추천 결과
    public List<RecommendDTO> recommendResult(String[] checkedValue) throws Exception;

    // 영양제 카테고리 추천 결과
    public List<RecommendDTO> ctgResult(String[] checkedValue) throws Exception;

    // 영양제 추천 결과 저장
    public void saveRecommend(RecommendDTO recommendDTO) throws Exception;
}
