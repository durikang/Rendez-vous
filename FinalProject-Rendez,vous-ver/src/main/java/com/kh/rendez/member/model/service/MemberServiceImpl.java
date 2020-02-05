package com.kh.rendez.member.model.service;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.Wish.model.vo.Wish;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.home.model.vo.HomeList;
import com.kh.rendez.lesson.model.vo.LessonInfo;
import com.kh.rendez.member.model.dao.MemberDao;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.member.model.vo.PaymentList;
import com.kh.rendez.member.model.vo.ReviewList;
import com.kh.rendez.member.model.vo.Userpropic;
import com.kh.rendez.member.model.vo.WishList;
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

	@Override
	public ArrayList<WishList> selectList1(int user_no) {
		return mDao.selectList1(user_no);
	}

	@Override
	public ArrayList<Wish> selectListWi(int userNo) {
		return mDao.selectListWi(userNo);
	}

	@Override
	public WishList selectListl(int l_no) {
		return mDao.selectListl(l_no);
	}

	@Override
	public ArrayList<PaymentList> selectListP(int userNo) {
		return mDao.selectListP(userNo);
	}

	@Override
	public int updatePayment(PaymentList p) {
		return mDao.updatePayment(p);
	}

	@Override
	public PaymentList selectOnePn(int pmNo) {
		return mDao.selectOnePn(pmNo);
	}

	@Override
	public Member selectMember(int user_no) {
		// TODO Auto-generated method stub
		return mDao.selectMember(user_no);
	}



	

}
