package com.healingpill.dao;

import com.healingpill.dto.RecommendDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.List;

@Repository
public class RecommendDAOImpl implements RecommendDAO{

    @Inject
    private SqlSession sqlSession;

    @Override
    public List<RecommendDTO> recommendResult(String[] checkedValue) throws Exception {
        return sqlSession.selectList(NAMESPACE + "recommendResult", checkedValue);
    }

    @Override
    public List<RecommendDTO> ctgResult(String[] checkedValue) throws Exception {
        return sqlSession.selectList(NAMESPACE + "ctgResult", checkedValue);
    }

    @Override
    public void saveRecommend(RecommendDTO recommendDTO) throws Exception {
        sqlSession.insert(NAMESPACE + "insertResult", recommendDTO);
    }
}
