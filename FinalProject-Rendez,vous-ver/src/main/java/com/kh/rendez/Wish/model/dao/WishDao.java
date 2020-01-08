package com.kh.rendez.Wish.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.Wish.model.vo.Wish;

@Repository("wDao")
public class WishDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertWish(Wish w) {
		return sqlSession.insert("wishMapper.insertWish", w);
	}

	public int updateWish(Wish w) {
		return sqlSession.update("wishMapper.updateMapper", w);
	}
	
	public int deleteWish(Wish w) {
		return sqlSession.delete("wishMapper.deleteMapper", w);
	}

	public int checkIdDup(String id) {
		return sqlSession.selectOne("wishMapper.idCheck", id);
	}
	
	

}
