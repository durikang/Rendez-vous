package com.kh.rendez.member.model.service;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.home.model.vo.HomeList;
import com.kh.rendez.member.model.dao.MemberDao;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.member.model.vo.ReviewList;
import com.kh.rendez.member.model.vo.Userpropic;
import com.kh.rendez.review.model.vo.Review;
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
	public int deleteMember(Member m) {
		return mDao.deleteMember(m);
	}

	// 리뷰리스트
	@Override
	public ArrayList<ReviewList> selectList(int userNo) {
		return mDao.selectList(userNo);
	}

	@Override
	public Userpropic selectOne(int user_no) {
		// TODO Auto-generated method stub
		return mDao.selectOne(user_no);
	}

	@Override
	public int updatePropic(Userpropic u) {
		// TODO Auto-generated method stub
		return mDao.updatePropic(u);
	}
	

}
