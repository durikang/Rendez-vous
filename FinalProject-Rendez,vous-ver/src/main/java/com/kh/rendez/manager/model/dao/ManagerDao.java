package com.kh.rendez.manager.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.manager.model.vo.AdminLesson;
import com.kh.rendez.manager.model.vo.AdminMember;
import com.kh.rendez.manager.model.vo.Coupon;
import com.kh.rendez.manager.model.vo.MemberJoinTutor;
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

	public ArrayList<AdminMember> selectMemberList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.selectMemberList", null, rowBounds);
	}

	public ArrayList<AdminMember> searchMemberList(Search search, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.searchMemberList",search,rowBounds);
	}
	public int insertCoupon(ArrayList<Coupon> clist) {
		
		return sqlSession.insert("managerMapper.insertCoupon",clist);
		
		
	}
	public ArrayList<MemberJoinTutor> selectTutorList(PageInfo pi, int n) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("managerMapper.selectTutorList",n,rowBounds);

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
		return sqlSession.selectOne("managerMapper.getListCount",i);
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
// 쿠폰 생성에 필요한 uNo에 맞는  uId 를 갖는 멤버 셀렉
	public ArrayList<AdminMember> selectMuIdList(List<Integer> unolist) {
		
		return (ArrayList)sqlSession.selectList("managerMapper.selectMuIdList",unolist);
	}

	public int getListTutorSearchCount(Search search) {
		
		return sqlSession.selectOne("managerMapper.getListTutorSearchCount",search);
	}

	public ArrayList<MemberJoinTutor> searchTutorList(Search search, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("managerMapper.searchTutorList",search,rowBounds);
	}

	public int getSortMemberList(Map<String, Object> param) {
		
		return sqlSession.selectOne("managerMapper.getSortMemberList",param);
	}

	public ArrayList<AdminMember> sortingSelectMemberList(Map<String, Object> param, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList)sqlSession.selectList("managerMapper.sortingSelectMemberList",param,rowBounds);

	}

	public ArrayList<AdminMember> selectTopFiveVip() {
		return (ArrayList)sqlSession.selectList("managerMapper.selectTopFiveVip");
	}

	public ArrayList<AdminMember> selectNewJoinList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.selectNewJoinList",null,rowBounds);
	}

	public int insertCoupon(Coupon c) {
		return sqlSession.insert("managerMapper.insertCoupon2",c);
	}
	
}
