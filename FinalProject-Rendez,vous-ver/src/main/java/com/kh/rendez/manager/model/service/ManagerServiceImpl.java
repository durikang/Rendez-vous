package com.kh.rendez.manager.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.manager.common.Pagination;
import com.kh.rendez.manager.model.dao.ManagerDao;
import com.kh.rendez.manager.model.vo.AdminLesson;
import com.kh.rendez.manager.model.vo.AdminMember;
import com.kh.rendez.manager.model.vo.Coupon;
import com.kh.rendez.manager.model.vo.MemberJoinTutor;
import com.kh.rendez.manager.model.vo.PageInfo;
import com.kh.rendez.manager.model.vo.Search;
import com.kh.rendez.support.model.vo.Qna;

@Service("mnService")
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private ManagerDao mnDao;
//	회원 셀렉
	@Override
	public ArrayList<AdminMember> selectList(int currentPage) {
		// 전체 게시글 수 조회
		int listCount = mnDao.getListCount(1);
		
		// 페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		// 멤버 리스트 조회
		return mnDao.selectMemberList(pi);
	}
//		회원 검색
	@Override
	public ArrayList<AdminMember> searchMemberList(Search search,int currentPage) {
		int listCount = mnDao.getListMemberSearchCount(search);
		
		// 페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return mnDao.searchMemberList(search,pi);
	}
	@Override
	public int insertCoupon(ArrayList<Coupon> clist) {

		
		return mnDao.insertCoupon(clist);
	}
	@Override
	public ArrayList<MemberJoinTutor> selectTutorList(int currentPage) {
		int listCount = mnDao.getListCount(3);
		
		// 페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
		
		return mnDao.selectTutorList(pi);
	}
//	이달 & 오늘 회원 가입자 수 리턴
	@Override
	public int countMember(int i) {
		return mnDao.countTodayMember(i);
	}
	@Override
	public int sumPay(int i) {
		return mnDao.sumPay(i);
	}
	@Override
	public ArrayList<AdminMember> selectMemberList() {
		return mnDao.selectTopMemberList();
	}
	
	@Override
	public ArrayList<AdminLesson> selectRealTimeLessonList() {
		// TODO Auto-generated method stub
		return mnDao.selectRealTimeLessonList();
	}
//	튜터 승인 & 비승인 기능
	@Override
	public int changeTutorStatus(HashMap<String, Object> map) {
		return mnDao.changeTutorStatus(map);
	}
//	전체 답변 갯수 & 답변 안한 갯 수 리턴 
	@Override
	public int selectQnaResponseCount(int i) {
		return mnDao.selectQnaResponseCount(i);
	}
//	전체 답변 리턴
	@Override
	public ArrayList<Qna> selectQna(int currentPage) {
		int listCount = mnDao.getListCount(4);
		// 페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		return mnDao.selectQna(pi);
	}
//	qna 검색결과 리턴
	@Override
	public ArrayList<Qna> searchQnaList(Search search, int currentPage) {
		int listCount=mnDao.getListQnaCount(search);
		PageInfo pi = Pagination.getPageInfo(currentPage,listCount);
		
		return mnDao.searchQnaList(pi,search);
	}
	@Override
	public ArrayList<Qna> selectQna(int i, int currentPage) {
		
		int listCount=mnDao.getListCount(i);
		
		PageInfo pi = Pagination.getPageInfo(currentPage,listCount);
		
		return mnDao.selectNoQna(pi);
	}
	
	@Override
	public ArrayList<AdminMember> selectMemberList(List<Integer> unolist) {
		return mnDao.selectMuIdList(unolist);
	}


}
