package com.kh.rendez.lesson.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.Wish.model.vo.Wish;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.lesson.model.vo.Lesson;
import com.kh.rendez.lesson.model.vo.LessonAttachment;
import com.kh.rendez.lesson.model.vo.LessonDetailInfo;
import com.kh.rendez.lesson.model.vo.LessonInfo;
import com.kh.rendez.lesson.model.vo.LessonReview;
import com.kh.rendez.lesson.model.vo.Student;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.review.model.vo.Review;

@Repository("lDao")
public class LessonDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertLessonInfo(LessonInfo lf) {
		return sqlSession.insert("lessonInfoMapper.insertLessonInfo",lf);
	}

	public int selectLNo(int uno) {
		return sqlSession.selectOne("lessonInfoMapper.selectLNo",uno);
	}

	public int insertAttachment(LessonAttachment la) {
		return sqlSession.insert("lessonInfoMapper.insertAttachment",la);
	}

	public ArrayList<LessonInfo> selectLIList(int uno) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectLIList",uno);
	}

	public ArrayList<LessonAttachment> selectLAList(int uno) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectLAList",uno);
	}

	public int insertLessonTime(Lesson l) {
		return sqlSession.insert("lessonInfoMapper.insertLessonTime",l);
	}

	public ArrayList<Lesson> selectLList(int uno) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectLList",uno);
	}

	public ArrayList<LessonInfo> selectAllLIList() {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectAllLIList");
	}

	public LessonInfo selectOneLI(int lNo) {
		return sqlSession.selectOne("lessonInfoMapper.selectOneLI", lNo);
	}

	public ArrayList<Lesson> selectTimeofLI(int lNo) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectTimeofLI",lNo);
	}

	public ArrayList<LessonAttachment> selectLAofLI(int lNo) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectLAofLI",lNo);
	}

	public int insertUserFav(Wish userWish) {
		return sqlSession.insert("lessonInfoMapper.insertUserFav",userWish);
	}

	public int deleteUserFav(Wish userWish) {
		return sqlSession.delete("lessonInfoMapper.deleteUserFav",userWish);
	}

	public int checkUserFav(Wish checkWish) {
		return sqlSession.selectOne("lessonInfoMapper.checkUserFav", checkWish);
	}

	public int checkUserPay(Payment pay) {
		return sqlSession.selectOne("lessonInfoMapper.checkUserPay",pay);
	}

	public int checkUserReview(Review checkReview) {
		return sqlSession.selectOne("lessonInfoMapper.checkUserReview",checkReview);
	}

	public ArrayList<LessonReview> selectLessonReviewList(int lNo) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectLessonReviewList",lNo);
	}

	public String selectTutorPic(int lNo) {
		return sqlSession.selectOne("lessonInfoMapper.selectTutorPic",lNo);
	}

	public int insertReview(Review inReview) {
		return sqlSession.insert("lessonInfoMapper.insertReview",inReview);
	}

	public Review selectUReview(Review selecter) {
		return sqlSession.selectOne("lessonInfoMapper.selectUReview",selecter);
	}

	public int updateReview(Review inReview) {
		return sqlSession.update("lessonInfoMapper.updateReview",inReview);
	}

	public LessonDetailInfo selectLDI(int lNo) {
		return sqlSession.selectOne("lessonInfoMapper.selectLDI",lNo);
	}

	public int updateLessonImg(LessonAttachment ua) {
		return sqlSession.update("lessonInfoMapper.updateLessonImg",ua);
	}

	public int deleteLessonImg(int laNo) {
		return sqlSession.delete("lessonInfoMapper.deleteLessonImg",laNo);
	}

	public int selectMaxNum(int lNo) {
		return sqlSession.selectOne("lessonInfoMapper.selectMaxNum",lNo);
	}

	public int addLessonImg(LessonAttachment addImg) {
		return sqlSession.insert("lessonInfoMapper.addLessonImg",addImg);
	}

	public LessonAttachment selectAddedImg(int lNo) {
		return sqlSession.selectOne("lessonInfoMapper.selectAddedImg",lNo);
	}

	public int lessonInfoUpdate(LessonInfo li) {
		return sqlSession.update("lessonInfoMapper.lessonInfoUpdate",li);
	}

	public int updatePT() {
		return sqlSession.update("lessonInfoMapper.updatePT");
	}

	public ArrayList<Student> selectStudents(Map<String, Integer> map) {
		System.out.println(map);
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectStudents",map);
	}

	public int selectNowCount(int user_no) {
		return sqlSession.selectOne("lessonInfoMapper.selectNowCount",user_no);
	}

	public int selectNowSum(int user_no) {
		return sqlSession.selectOne("lessonInfoMapper.selectNowSum",user_no);
	}

	public int selectTotalCount(int user_no) {
		return sqlSession.selectOne("lessonInfoMapper.selectTotalCount",user_no);
	}

	public int selectTotalSum(int user_no) {
		return sqlSession.selectOne("lessonInfoMapper.selectTotalSum",user_no);
	}

	

	



}
