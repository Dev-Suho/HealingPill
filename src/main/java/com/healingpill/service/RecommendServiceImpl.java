package com.healingpill.service;

import com.healingpill.dao.RecommendDAO;
import com.healingpill.dto.RecommendDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.List;

@Service
public class RecommendServiceImpl implements RecommendService {

    @Inject
    private RecommendDAO recommendDAO;

    @Override
    public List<RecommendDTO> recommendResult(String[] checkedValue) throws Exception {
        return recommendDAO.recommendResult(checkedValue);
    }

    @Override
    public List<RecommendDTO> ctgResult(String[] checkedValue) throws Exception {
        return recommendDAO.ctgResult(checkedValue);
    }

    @Override
    public void saveRecommend(RecommendDTO recommendDTO) throws Exception {
        recommendDAO.saveRecommend(recommendDTO);
    }
}
