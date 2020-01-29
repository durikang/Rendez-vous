package com.kh.rendez.manager.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kh.rendez.manager.model.vo.AdminLesson;
import com.kh.rendez.manager.model.vo.AdminMemCounts;
import com.kh.rendez.manager.model.vo.AdminMember;
import com.kh.rendez.manager.model.vo.AdminMonthsStatic;
import com.kh.rendez.manager.model.vo.Coupon;
import com.kh.rendez.manager.model.vo.MemberJoinTutor;
import com.kh.rendez.manager.model.vo.Search;
import com.kh.rendez.support.model.vo.Qna;

public interface ManagerService {

	public ArrayList<AdminMember> selectList(int currentPage);

	public ArrayList<AdminMember> searchMemberList(Search search, int currentPage);

//	쿠폰 저장
	public int insertCoupon(ArrayList<Coupon> clist);
	
	public ArrayList<MemberJoinTutor> selectTutorList(int currentPage, int n);

	public int countMember(int i);

	public int sumPay(int i);
	
	// 회원 가입자 수 평균페이지에 리턴
	public AdminMonthsStatic selectmemberList(String year);

	public ArrayList<AdminMember> selectMemberList();
//	쿠폰 생성에 필요한 (멤버 uno에 맞는 멤버 리스트들 리턴)
	public ArrayList<AdminMember> selectMemberList(List<Integer> unolist);
	
	public ArrayList<AdminLesson> selectRealTimeLessonList();

	public int changeTutorStatus(HashMap<String, Object> map);
//	qna응답,비응답 갯수?
	public int selectQnaResponseCount(int i);
//	qna 리스트
	public ArrayList<Qna> selectQna(int currentPage);
//	조건에 맞는 리스트 리턴
	public ArrayList<Qna> selectQna(int i, int currentPage);
//	qna검색바
	public ArrayList<Qna> searchQnaList(Search search, int currentPage);
// 튜터 검색
	public ArrayList<MemberJoinTutor> searchTutor(Search search, int currentPage);

	public ArrayList<AdminMember> sortingSelectMemberList(Map<String, Object> param, int currentPage);

	public ArrayList<AdminMember> selectTopFiveVip();
// 새로 가입한 멤버들 셀렉
	public ArrayList<AdminMember> selectNewJoinList(int currentPage);
//	년도 셀랙
	public ArrayList<String> selectYearList();

	public AdminMonthsStatic selectmonthlyIncome(String year);

	public ArrayList<String> selectYearList2();


}
