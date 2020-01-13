package com.kh.rendez.baesung.point.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("pointDao")
public class PointDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int checkUser_Point(int uNo) {
		return sqlSession.selectOne("pointMapper.checkUserPoint", uNo);
	}

	public int insertNewPoint(int uNo) {
		
		return sqlSession.insert("pointMapper.insertNewPoint",uNo);
	}

	public int selectPoint(int uNo) {
		return sqlSession.selectOne("pointMapper.selectPoint",uNo);
	}

}
