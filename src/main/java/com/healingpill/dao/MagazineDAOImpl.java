package com.healingpill.dao;


import com.healingpill.dto.MagazineDTO;
import com.sun.org.apache.xml.internal.utils.NameSpace;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MagazineDAOImpl implements MagazineDAO{

    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public MagazineDTO view(MagazineDTO magazineDTO) {
        MagazineDTO res = null;

        try {
            res = sqlSession.selectOne(NAMESPACE + "viewCheck", magazineDTO);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  res;
    }

}
