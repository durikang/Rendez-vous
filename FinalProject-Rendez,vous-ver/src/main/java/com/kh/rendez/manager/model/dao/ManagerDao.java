package com.kh.rendez.manager.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.manager.model.vo.AdminLesson;
import com.kh.rendez.manager.model.vo.AdminMember;
import com.kh.rendez.manager.model.vo.Coupon;
import com.kh.rendez.manager.model.vo.MemberJoinTutor;
import com.kh.rendez.manager.model.vo.MemberJoinUserpropic;
import com.kh.rendez.manager.model.vo.PageInfo;
import com.kh.rendez.manager.model.vo.Search;
import com.kh.rendez.support.model.vo.Qna;

@Repository("mnDao")
public class ManagerDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount(int n) {
		
		return sqlSession.selectOne("managerMapper.getListCount",n);
	}
	
	public int getListMemberSearchCount(Search search) {
		return sqlSession.selectOne("managerMapper.getListMemberSearchCount",search);
	}

	public ArrayList<MemberJoinUserpropic> selectMemberList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.selectMemberList", null, rowBounds);
	
	}

	public ArrayList<MemberJoinUserpropic> searchMemberList(Search search, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.searchMemberList",search,rowBounds);
	}
	public int insertCoupon(Coupon coupon) {
		
		return sqlSession.insert("managerMapper.insertCoupon",coupon);
	}
	public ArrayList<MemberJoinTutor> selectTutorList(PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.selectTutorList",null,rowBounds);

	}
	
	public int countTodayMember(int i) {
		return sqlSession.selectOne("managerMapper.countMember",i);
	}
	public int sumPay(int i) {
		return sqlSession.selectOne("managerMapper.sumPay",i);
	}
	public ArrayList<AdminMember> selectTopMemberList() {

		return (ArrayList)sqlSession.selectList("managerMapper.selectTopMemberList");
	}
	public ArrayList<AdminLesson> selectRealTimeLessonList() {
		return (ArrayList)sqlSession.selectList("managerMapper.selectRealTimeLessonList");
	}
	public int changeTutorStatus(HashMap<String, Object> map) {
		return sqlSession.update("managerMapper.changeTutorStatus",map);
	}
//	답변과 미답변 구분하여 리턴
	public int selectQnaResponseCount(int i) {
		return sqlSession.selectOne("managerMapper.getListCount",i) == null ? 0 : sqlSession.selectOne("managerMapper.getListCount",i);
	}
//	전체 qan 리턴
	public ArrayList<Qna> selectQna(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.selectQnaList",1,rowBounds);
	}
	public ArrayList<Qna> searchQnaList(PageInfo pi,Search search) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("managerMapper.searchQnaList",search,rowBounds);
	}
	
	public int getQnaListCount(Search search) {

		return sqlSession.selectOne("managerMapper.getQnaListCount",search);
	}

	public int getListQnaCount(Search search) {
		
		return sqlSession.selectOne("managerMapper.searchQnaCount",search);
	}

	public ArrayList<Qna> selectNoQna(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.selectQnaList",2,rowBounds);
	}
	
}
