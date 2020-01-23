package com.kh.rendez.support.model.service;

import java.util.ArrayList;

import com.kh.rendez.support.model.vo.Answer;
import com.kh.rendez.support.model.vo.Qna;

public interface SupportService {

	ArrayList<Qna> selectList(int currentPage);

	Qna selectQna(int qNo);
	
	ArrayList<Qna> selectSearch(int currentPage, String keyword);

	int insertQna(Qna q);

	int deleteQna(int qNo);

	int updateQna(Qna q);

	int insertAnswer(Answer a);

	ArrayList<Answer> selectAnswerList(int qNo);

	ArrayList<Qna> selectMyQnaList(int currentPage, int writer);

	int updateAnswerStatus(int refQno);

}
