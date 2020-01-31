package com.kh.rendez.member.model.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.member.model.vo.ReviewList;
import com.kh.rendez.member.model.vo.Userpropic;
import com.kh.rendez.support.model.vo.PageInfo;
import com.kh.rendez.support.model.vo.Qna;

@Repository("mDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member selectMember(Member m) {		
		return (Member)sqlSession.selectOne("memberMapper.selectOne", m);
	}

	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}

	public int deleteMember(Member m) {
		return sqlSession.update("memberMapper.deleteMember", m);
	}

	public int checkIdDup(String user_id) {
		return sqlSession.selectOne("memberMapper.idCheck", user_id);
	}
	
	public int getMyQnaListCount(int currentPage, int writer) {
		return sqlSession.selectOne("supportMapper.getMyQnaListCount", writer);
	}

	//리뷰리스트
	public ArrayList<ReviewList> selectList(int userNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectReviewList", userNo);
	}

	public Userpropic selectOne(int user_no) {
		
		return sqlSession.selectOne("memberMapper.userpropic",user_no);
	}


	

	
	

}
