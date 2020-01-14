package com.kh.rendez.member.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.support.model.vo.Qna;

public interface MemberService {
	
	// 로그인
	public Member loginMember(Member m);
	
	// 회원가입
	public int insertMember(Member m);
	
	// 회원 정보 수정
	public int updateMember(Member m);
	
	// 회원 가입 시 아이디 중복 체크
	public int checkIdDup(String id);
	
	// 회원 탈퇴
	public int deleteMember(Member m);
	
	// 내가 쓴 문의내역 리스트
	public ArrayList<Qna> selectMyQnaList(int currentPage, String writer);
	


	
	
	
}
