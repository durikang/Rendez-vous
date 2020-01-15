package com.kh.rendez.tutor.model.dao;

import java.util.ArrayList;

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
	
	public int updateMemberType(int uno) {
		return sqlSession.update("tutorMapper.updateMemberType",uno);
	}


	public Tutor selectTutorOfLI(int lNo) {
		return sqlSession.selectOne("tutorMapper.selectTutorOfLI",lNo);
	}

	public String selectTutorName(int lNo) {
		return sqlSession.selectOne("tutorMapper.selectTutorName", lNo);
	}

	public ArrayList<Certification> selectTCert(int uNo) {
		return (ArrayList)sqlSession.selectList("tutorMapper.selectTCert",uNo);
	}

	public String selectTutorStatus(int uno) {
		return sqlSession.selectOne("tutorMapper.selectTutorStatus",uno);
	}



	
	
}
