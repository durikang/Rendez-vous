package com.kh.rendez.tutor.model.service;

import java.util.ArrayList;

import com.kh.rendez.tutor.model.vo.Certification;
import com.kh.rendez.tutor.model.vo.Tutor;


public interface TutorService {

	int insertTutor(Tutor inTutor);

	int insertCertification(Certification inCer);

	Tutor selectTutorOfLI(int lNo);

	String selectTutorName(int lNo);

	ArrayList<Certification> selectTCert(int uNo, int currentPage);

	int updateMemberType(int uno);

	String selectTutorStatus(int uno);

	Tutor selectTutorInfo(int uNo);

	String selectTutorPic(int uNo);

	String selectSubCate(int user_no);

	

}
