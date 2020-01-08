package com.kh.rendez.tutor.model.service;

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


	
	
}
