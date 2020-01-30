package com.kh.rendez.lesson.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.Wish.model.vo.Wish;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.lesson.model.dao.LessonDao;
import com.kh.rendez.lesson.model.vo.Lesson;
import com.kh.rendez.lesson.model.vo.LessonAttachment;
import com.kh.rendez.lesson.model.vo.LessonDetailInfo;
import com.kh.rendez.lesson.model.vo.LessonInfo;
import com.kh.rendez.lesson.model.vo.LessonReview;
import com.kh.rendez.member.model.vo.Member;
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

	@Override
	public LessonDetailInfo selectLDI(int lNo) {
		return lDao.selectLDI(lNo);
	}

	@Override
	public int updateLessonImg(LessonAttachment ua) {
		return lDao.updateLessonImg(ua);
	}

	@Override
	public int deleteLessonImg(int laNo) {
		return lDao.deleteLessonImg(laNo);
	}

	@Override
	public int selectMaxNum(int lNo) {
		return lDao.selectMaxNum(lNo);
	}

	@Override
	public int addLessonImg(LessonAttachment addImg) {
		return lDao.addLessonImg(addImg);
	}

	@Override
	public LessonAttachment selectAddedImg(int lNo) {
		return lDao.selectAddedImg(lNo);
	}

	@Override
	public int lessonInfoUpdate(LessonInfo li) {
		return lDao.lessonInfoUpdate(li);
	}

	@Override
	public int updatePT() {
		return lDao.updatePT();
	}

	@Override
	public ArrayList<Member> selectStudents(Map<String, Integer> map) {
		return lDao.selectStudents(map);
	}

	@Override
	public int selectNowCount(int user_no) {
		return lDao.selectNowCount(user_no);
	}

	@Override
	public int selectNowSum(int user_no) {
		return lDao.selectNowSum(user_no);
	}

	@Override
	public int selectTotalCount(int user_no) {
		return lDao.selectTotalCount(user_no);
	}

	@Override
	public int selectTotalSum(int user_no) {
		return lDao.selectTotalSum(user_no);
	}





	
	
	
	
	
}
