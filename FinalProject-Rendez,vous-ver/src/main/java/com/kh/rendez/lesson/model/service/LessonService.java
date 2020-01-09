package com.kh.rendez.lesson.model.service;

import java.util.ArrayList;

import com.kh.rendez.Wish.model.vo.Wish;
import com.kh.rendez.lesson.model.vo.Lesson;
import com.kh.rendez.lesson.model.vo.LessonAttachment;
import com.kh.rendez.lesson.model.vo.LessonInfo;

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

	

}
