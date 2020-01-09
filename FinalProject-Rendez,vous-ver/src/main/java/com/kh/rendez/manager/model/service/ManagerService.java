package com.kh.rendez.manager.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.rendez.manager.model.vo.AdminLesson;
import com.kh.rendez.manager.model.vo.AdminMember;
import com.kh.rendez.manager.model.vo.Coupon;
import com.kh.rendez.manager.model.vo.MemberJoinTutor;
import com.kh.rendez.manager.model.vo.MemberJoinUserpropic;
import com.kh.rendez.manager.model.vo.Search;

public interface ManagerService {

	public ArrayList<MemberJoinUserpropic> selectList(int currentPage);

	public ArrayList<MemberJoinUserpropic> searchMemberList(Search search, int currentPage);

	public int insertCoupon(Coupon coupon);

	public ArrayList<MemberJoinTutor> selectTutorList(int currentPage);

	public int countMember(int i);

	public int sumPay(int i);

	public ArrayList<AdminMember> selectMemberList();

	public ArrayList<AdminLesson> selectRealTimeLessonList();

	public int changeTutorStatus(List<Integer> uNo);

	
}
