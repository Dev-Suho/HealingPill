package com.healingpill.service;

import com.healingpill.dto.RecommendDTO;

import java.util.HashMap;
import java.util.List;

public interface RecommendService {

    public List<RecommendDTO> recommendResult(String[] checkedValue) throws Exception;

    public List<RecommendDTO> ctgResult(String[] checkedValue) throws Exception;

    public void saveRecommend(RecommendDTO recommendDTO) throws Exception;
}
