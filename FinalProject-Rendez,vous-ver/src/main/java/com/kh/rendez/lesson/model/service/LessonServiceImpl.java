package com.kh.rendez.lesson.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.Wish.model.vo.Wish;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.lesson.model.dao.LessonDao;
import com.kh.rendez.lesson.model.vo.Lesson;
import com.kh.rendez.lesson.model.vo.LessonAttachment;
import com.kh.rendez.lesson.model.vo.LessonInfo;
import com.kh.rendez.lesson.model.vo.LessonReview;
import com.kh.rendez.review.model.vo.Review;

@Service("lService")
public class LessonServiceImpl implements LessonService {

	@Autowired
	private LessonDao lDao;

	@Override
	public int insertLessonInfo(LessonInfo lf) {
		return lDao.insertLessonInfo(lf);
	}

	@Override
	public int selectLNo(int uno) {
		return lDao.selectLNo(uno);
	}

	@Override
	public int insertAttachment(LessonAttachment la) {
		return lDao.insertAttachment(la);
	}

	@Override
	public ArrayList<LessonInfo> selectLIList(int uno) {
		return lDao.selectLIList(uno);
	}

	@Override
	public ArrayList<LessonAttachment> selectLAList(int uno) {
		return lDao.selectLAList(uno);
	}

	@Override
	public int insertLessonTime(Lesson l) {
		return lDao.insertLessonTime(l);
	}

	@Override
	public ArrayList<Lesson> selectLList(int uno) {
		return lDao.selectLList(uno);
	}

	@Override
	public ArrayList<LessonInfo> selectAllLIList() {
		return lDao.selectAllLIList();
	}

	@Override
	public LessonInfo selectOneLI(int lNo) {
		return lDao.selectOneLI(lNo);
	}

	@Override
	public ArrayList<Lesson> selectTimeofLI(int lNo) {
		return lDao.selectTimeofLI(lNo);
	}

	@Override
	public ArrayList<LessonAttachment> selectLAofLI(int lNo) {
		return lDao.selectLAofLI(lNo);
	}

	@Override
	public int insertUserFav(Wish userWish) {
		return lDao.insertUserFav(userWish);
	}

	@Override
	public int deleteUserFav(Wish userWish) {
		return  lDao.deleteUserFav(userWish);
	}

	@Override
	public int checkUserFav(Wish checkWish) {
		return lDao.checkUserFav(checkWish);
	}

	@Override
	public int checkUserPay(Payment pay) {
		return lDao.checkUserPay(pay);
	}

	@Override
	public int checkUserReview(Review checkReview) {
		return lDao.checkUserReview(checkReview);
	}

	@Override
	public ArrayList<LessonReview> selectLessonReviewList(int lNo) {
		return lDao.selectLessonReviewList(lNo);
	}

	@Override
	public String selectTutorPic(int lNo) {
		return lDao.selectTutorPic(lNo);
	}

	@Override
	public int insertReview(Review inReview) {
		return lDao.insertReview(inReview);
	}

	@Override
	public Review selectUReview(Review selecter) {
		return lDao.selectUReview(selecter);
	}

	@Override
	public int updateReview(Review inReview) {
		return lDao.updateReview(inReview);
	}





	
	
	
	
	
}
