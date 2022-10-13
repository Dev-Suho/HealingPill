package com.healingpill.dao;


//import com.sun.org.apache.xml.internal.utils.NameSpace;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class MagazineDAOImpl implements MagazineDAO {
    @Inject
    private SqlSession sqlSession;

    @Override
    public List<MagazineVO> magzineView() throws Exception {
        return sqlSession.selectList(NAMESPACE + "magazine");
    }
}
