package com.kh.rendez.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.member.model.dao.MemberDao;
import com.kh.rendez.member.model.vo.Member;


@Service("mService")
public class MemberServiceImpl implements MemberService {	
	@Autowired
	private MemberDao mDao;
	
	@Override
	public Member loginMember(Member m) {
		return mDao.selectMember(m);
	}

	@Override
	public int InsertMember(Member m) {
		return mDao.insertMember(m);
	}

	/*
	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(m);
	}

	@Override
	public int deleteMember(Member m) {
		return mDao.deleteMember(m);
	}*/

	@Override
	public int checkIdDup(String id) {
		return mDao.checkIdDup(id);
	}
	
}
