package com.kh.rendez.baesung.point.model.dao;

import java.util.HashMap;

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

	public int insertCoupon(int uNo) {
		return sqlSession.insert("pointMapper.insertCoupon",uNo);
	}

	public int insertNewPoint(int uNo, int point) {
		HashMap map = new HashMap();
		map.put("uNo", uNo);
		map.put("point", point);
		return sqlSession.update("pointMapper.updatePoint",map);
	}

	public String checkrepetition(int uNo) {
		return sqlSession.selectOne("pointMapper.checkrepetition", uNo);
	}

	public String checkCoupon(int uNo) {
		return sqlSession.selectOne("pointMapper.checkCoupon", uNo);
	}

}
