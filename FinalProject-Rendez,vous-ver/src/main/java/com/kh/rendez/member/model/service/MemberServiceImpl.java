package com.kh.rendez.member.model.service;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.member.model.dao.MemberDao;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.support.common.Pagination;
import com.kh.rendez.support.model.vo.PageInfo;
import com.kh.rendez.support.model.vo.Qna;


@Service("mService")
public class MemberServiceImpl implements MemberService {	
	@Autowired
	private MemberDao mDao;
	
	@Override
	public Member loginMember(Member m) {
		return mDao.selectMember(m);
	}

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(m);
	}

	
	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(m);
	}

	@Override
	public int checkIdDup(String user_id) {
		return mDao.checkIdDup(user_id);
	}

	@Override
	public ArrayList<Qna> selectMyQnaList(int currentPage, String writer) {
		int listCount = mDao.getMyQnaListCount(currentPage, writer);
		System.out.println(listCount);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return mDao.selectMyQnaList(pi, writer);
	}

	@Override
	public int deleteMember(Member m) {
		return mDao.deleteMember(m);
	}

}
