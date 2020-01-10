package com.kh.rendez.review.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("rDao")
public class ReviewDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

}
