package com.kh.rendez.member.model.service;

import com.kh.rendez.member.model.vo.Member;

public interface MemberService {
	
	// 1. 회원 로그인
	public Member loginMember(Member m);
	
	// 2. 회원가입 서비스를 위한 메소드
	public int InsertMember(Member m);
	
	/*
	// 3. 회원 정보 수정 서비스를 위한 메소드
	public int updateMember(Member m);
	
	// 4. 회원 탈퇴 서비스를 위한 메소드
	public int deleteMember(Member m);
	 */
	
	// 5. 회원 가입 시 아이디 중복 체크
	public int checkIdDup(String id);
	
	
	
}
