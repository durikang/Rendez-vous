package com.kh.rendez.tutor.model.service;

import com.kh.rendez.tutor.model.vo.Certification;
import com.kh.rendez.tutor.model.vo.Tutor;


public interface TutorService {

	int insertTutor(Tutor inTutor);

	int insertCertification(Certification inCer);

	Tutor selectTutorOfLI(int lNo);

	String selectTutorName(int lNo);

	

}
