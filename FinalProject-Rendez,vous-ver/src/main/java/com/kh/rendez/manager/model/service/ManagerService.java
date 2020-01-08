package com.kh.rendez.manager.model.service;

import java.util.ArrayList;

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
	
}
