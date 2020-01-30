package com.kh.rendez.lesson.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.rendez.Wish.model.vo.Wish;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.lesson.model.vo.Lesson;
import com.kh.rendez.lesson.model.vo.LessonAttachment;
import com.kh.rendez.lesson.model.vo.LessonDetailInfo;
import com.kh.rendez.lesson.model.vo.LessonInfo;
import com.kh.rendez.lesson.model.vo.LessonReview;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.review.model.vo.Review;

public interface LessonService {

	int insertLessonInfo(LessonInfo lf);

	int selectLNo(int uno);

	int insertAttachment(LessonAttachment la);

	ArrayList<LessonInfo> selectLIList(int uno);

	ArrayList<LessonAttachment> selectLAList(int uno);

	int insertLessonTime(Lesson l);

	ArrayList<Lesson> selectLList(int uno);

	ArrayList<LessonInfo> selectAllLIList();

	LessonInfo selectOneLI(int lNo);

	ArrayList<Lesson> selectTimeofLI(int lNo);

	ArrayList<LessonAttachment> selectLAofLI(int lNo);

	int insertUserFav(Wish userWish);

	int deleteUserFav(Wish userWish);

	int checkUserFav(Wish checkWish);

	int checkUserPay(Payment pay);

	int checkUserReview(Review checkReview);

	ArrayList<LessonReview> selectLessonReviewList(int lNo);

	String selectTutorPic(int lNo);

	int insertReview(Review inReview);

	Review selectUReview(Review selecter);

	int updateReview(Review inReview);

	LessonDetailInfo selectLDI(int lNo);

	int updateLessonImg(LessonAttachment ua);

	int deleteLessonImg(int laNo);

	int selectMaxNum(int lNo);

	int addLessonImg(LessonAttachment addImg);

	LessonAttachment selectAddedImg(int lNo);

	int lessonInfoUpdate(LessonInfo li);

	int updatePT();

	ArrayList<Member> selectStudents(Map<String, Integer> map);

	int selectNowCount(int user_no);

	int selectNowSum(int user_no);

	int selectTotalCount(int user_no);

	int selectTotalSum(int user_no);

	

	



	

}
