package com.kh.rendez.tutor.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.manager.model.vo.PageInfo;
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

	public ArrayList<Certification> selectTCert(int uNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("tutorMapper.selectTCert",uNo,rowBounds);
	}

	public String selectTutorStatus(int uno) {
		return sqlSession.selectOne("tutorMapper.selectTutorStatus",uno);
	}

	public Tutor selectTutorInfo(int uNo) {
		return sqlSession.selectOne("tutorMapper.selectTutorInfo",uNo);
	}

	public String selectTutorPic(int uNo) {
		return sqlSession.selectOne("tutorMapper.selectTutorPic",uNo);
	}

	//증명사진 전체 갯수 리턴- 두리
	public int getListCount() {
		return sqlSession.selectOne("tutorMapper.getListCount");
	}

	public String selectSubCate(int uNo) {
		return sqlSession.selectOne("tutorMapper.selectSubCate",uNo);
	}



	
	
}
