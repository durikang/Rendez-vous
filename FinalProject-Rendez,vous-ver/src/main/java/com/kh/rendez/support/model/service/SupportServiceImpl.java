package com.kh.rendez.support.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.support.common.Pagination;
import com.kh.rendez.support.model.dao.SupportDao;
import com.kh.rendez.support.model.vo.Answer;
import com.kh.rendez.support.model.vo.PageInfo;
import com.kh.rendez.support.model.vo.Qna;

@Service("sService")
public class SupportServiceImpl implements SupportService {
	@Autowired
	SupportDao sDao;

	@Override
	public ArrayList<Qna> selectList(int currentPage) {
		
		int listCount = sDao.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);		
		
		return sDao.selectList(pi);
	}
	
	@Override
	public ArrayList<Qna> selectMyQnaList(int currentPage, String writer) {
		int listCount = sDao.getMyQnaListCount(writer);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return sDao.selecMyQnaList(pi, writer); 
		
	}

	@Override
	public Qna selectQna(int qNo) {		
		return sDao.selectQna(qNo);
	}

	@Override
	public ArrayList<Qna> selectSearch(int currentPage, String keyword) {
		
		int listCount = sDao.getSearchListCount(keyword);
		System.out.println(listCount);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		System.out.println(pi);
		
		return sDao.selectSearch(pi, keyword);
	}

	@Override
	public int insertQna(Qna q) {
		return sDao.insertQna(q);
	}

	@Override
	public int deleteQna(int qNo) {
		return sDao.deleteQna(qNo);
	}

	@Override
	public int updateQna(Qna q) {
		return sDao.updateQna(q);
	}

	@Override
	public int insertAnswer(Answer a) {
		return sDao.insertAnswer(a);
	}

	@Override
	public ArrayList<Answer> selectAnswerList(int qNo) {
		return sDao.selectAnswerList(qNo);
	}

	

	

}
