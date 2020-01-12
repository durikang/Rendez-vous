package com.kh.rendez.manager.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.rendez.manager.model.vo.AdminLesson;
import com.kh.rendez.manager.model.vo.AdminMember;
import com.kh.rendez.manager.model.vo.Coupon;
import com.kh.rendez.manager.model.vo.MemberJoinTutor;
import com.kh.rendez.manager.model.vo.MemberJoinUserpropic;
import com.kh.rendez.manager.model.vo.Search;
import com.kh.rendez.support.model.vo.Qna;

public interface ManagerService {

	public ArrayList<MemberJoinUserpropic> selectList(int currentPage);

	public ArrayList<MemberJoinUserpropic> searchMemberList(Search search, int currentPage);

	public int insertCoupon(Coupon coupon);

	public ArrayList<MemberJoinTutor> selectTutorList(int currentPage);

	public int countMember(int i);

	public int sumPay(int i);

	public ArrayList<AdminMember> selectMemberList();

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


	
}
