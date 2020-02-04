package com.kh.rendez.tutor.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.manager.common.Pagination;
import com.kh.rendez.manager.model.vo.PageInfo;
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
	public ArrayList<Certification> selectTCert(int uNo, int currentPage) {
		int listCount = tDao.getListCount();
		// 페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
		return tDao.selectTCert(uNo,pi);
	}

	@Override
	public String selectTutorStatus(int uno) {
		return tDao.selectTutorStatus(uno);
	}

	@Override
	public Tutor selectTutorInfo(int uNo) {
		return tDao.selectTutorInfo(uNo);
	}

	@Override
	public String selectTutorPic(int uNo) {
		return tDao.selectTutorPic(uNo);
	}

	@Override
	public String selectSubCate(int user_no) {
		return tDao.selectSubCate(user_no);
	}




	
	
}
