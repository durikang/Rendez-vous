package com.kh.rendez.tutor.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.tutor.model.dao.TutorDao;
import com.kh.rendez.tutor.model.vo.Certification;
import com.kh.rendez.tutor.model.vo.Tutor;

@Service("tService")
public class TuTorServiceImpl implements TutorService {

	@Autowired
	private TutorDao tDao;

	@Override
	public int insertTutor(Tutor inTutor) {
		return tDao.insertTutor(inTutor);
	}

	@Override
	public int insertCertification(Certification inCer) {
		return tDao.insertCertification(inCer);
	}
	
	@Override
	public int updateMemberType(int uno) {
		return tDao.updateMemberType(uno);
	}
	

	@Override
	public Tutor selectTutorOfLI(int lNo) {
		return tDao.selectTutorOfLI(lNo);
	}

	@Override
	public String selectTutorName(int lNo) {
		return tDao.selectTutorName(lNo);
	}

	@Override
	public ArrayList<Certification> selectTCert(int uNo) {
		return tDao.selectTCert(uNo);
	}




	
	
}
