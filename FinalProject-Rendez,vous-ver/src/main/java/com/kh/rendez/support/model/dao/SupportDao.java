package com.kh.rendez.support.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.support.model.vo.Answer;
import com.kh.rendez.support.model.vo.PageInfo;
import com.kh.rendez.support.model.vo.Qna;

@Repository("sDao")
public class SupportDao {
	@Autowired
	SqlSessionTemplate sqlSession;	

	public int getListCount() {
		return sqlSession.selectOne("supportMapper.getListCount");
	}
	public int getSearchListCount(String keyword) {
		return sqlSession.selectOne("supportMapper.getSearchListCount", keyword);
	}
	
	public int getMyQnaListCount(int writer) {
		return sqlSession.selectOne("supportMapper.getMyQnaListCount", writer);
	}

	public ArrayList<Qna> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("supportMapper.selectList", null, rowBounds);
	}
	
	public ArrayList<Qna> selecMyQnaList(PageInfo pi, int writer) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("supportMapper.selectMyQnaList", writer, rowBounds);
	}

	public Qna selectQna(int qNo) {
		return sqlSession.selectOne("supportMapper.selectOneQna", qNo);
	}

	public ArrayList<Qna> selectSearch(PageInfo pi, String keyword) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("supportMapper.selectSearch", keyword, rowBounds);
	}
	
	public int insertQna(Qna q) {
		return sqlSession.insert("supportMapper.insertQna", q);
	}
	public int deleteQna(int qNo) {
		return sqlSession.update("supportMapper.deleteQna", qNo);
	}
	public int updateQna(Qna q) {
		return sqlSession.update("supportMapper.updateQna", q);
	}
	public int insertAnswer(Answer a) {
		return sqlSession.insert("supportMapper.insertAnswer", a);
	}
	public ArrayList<Answer> selectAnswerList(int qNo) {
		return (ArrayList)sqlSession.selectList("supportMapper.selectAnswerList", qNo);
	}
	public int updateAnswerStatus(int qNo) {
		return sqlSession.update("supportMapper.updateAnswerStatus", qNo);
	}
	
	
	


}
