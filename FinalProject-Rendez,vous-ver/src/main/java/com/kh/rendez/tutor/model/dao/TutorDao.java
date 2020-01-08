package com.kh.rendez.tutor.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.tutor.model.vo.Certification;
import com.kh.rendez.tutor.model.vo.Tutor;

@Repository("tDao")
public class TutorDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertTutor(Tutor inTutor) {
		return sqlSession.insert("tutorMapper.insertTutor",inTutor);
	}

	public int insertCertification(Certification inCer) {
		return sqlSession.insert("tutorMapper.insertCertification",inCer);
	}


	
	
}
