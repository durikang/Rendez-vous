package com.kh.rendez.member.model.service;

import java.util.ArrayList;

import com.kh.rendez.Wish.model.vo.Wish;
import com.kh.rendez.lesson.model.vo.LessonInfo;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.member.model.vo.ReviewList;
import com.kh.rendez.member.model.vo.Userpropic;
import com.kh.rendez.member.model.vo.WishList;

public interface MemberService {
	
	// 로그인
	public Member loginMember(Member m);
	
	// 회원가입
	public int insertMember(Member m);
	
	// 회원 정보 수정
	public int updateMember(Member m);
	
	// 회원 가입 시 아이디 중복 체크
	public int checkIdDup(String user_id);
	
	// 회원 탈퇴
	public int deleteMember(Member m);

	// 내가 쓴 리뷰내역 리스트
	public ArrayList<ReviewList> selectList(int userNo);

	public Userpropic selectOne(int user_no);

	public int updatePropic(Userpropic u);

	public ArrayList<WishList> selectList1(int user_no);

	public ArrayList<Wish> selectListWi(int userNo);

	public WishList selectListl(int l_no);


	
	
	
}
