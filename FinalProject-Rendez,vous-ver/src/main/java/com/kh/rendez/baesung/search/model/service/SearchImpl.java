package com.kh.rendez.baesung.search.model.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.baesung.common.Pagination;
import com.kh.rendez.baesung.search.model.dao.SearchDao;
import com.kh.rendez.baesung.search.model.vo.DetailClass;
import com.kh.rendez.baesung.search.model.vo.PageInfo;
import com.kh.rendez.baesung.search.model.vo.classCount;
import com.kh.rendez.baesung.search.model.vo.searchInfo;
import com.kh.rendez.baesung.search.model.vo.tClass;

@Service("jsService")
public class SearchImpl implements SearchService{

	@Autowired
	SearchDao jsDao;
	
	@Override
	public ArrayList<tClass> selectSearchList(searchInfo sInfo, int currentPage) {
		
		int listCount = jsDao.getListCount(sInfo);
		
		// 페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return jsDao.selectSearchList(sInfo,pi);
	}

	@Override
	public ArrayList<tClass> SearchCateMainList(searchInfo sInfo, int currentPage) {
		
		//System.out.println("서비스 sInfo : " + sInfo);
		int listCount = jsDao.getListCount(sInfo);
		//System.out.println("메인 리스트 카운트 : " +listCount);
		
		// 페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return jsDao.SearchCateMainList(sInfo, pi);
	}

	@Override
	public ArrayList<tClass> SearchCateSubList(searchInfo sInfo, int currentPage) {
		
		//System.out.println();
		int listCount = jsDao.getListCount(sInfo);
		
		// 페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return jsDao.SearchCateSubList(sInfo, pi);
	}

	@Override
	public ArrayList<tClass> selectSearchDetailList(searchInfo sInfo, int currentPage) {

		//System.out.println("디테일 검색 서비스 : " + sInfo);
		int listCount = jsDao.getDetailListCount(sInfo);
		//System.out.println(listCount);
		
		ArrayList<DetailClass> dc = jsDao.getDetailList(sInfo);
		
		//System.out.println(dc);
		
		// 페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		if(listCount == 0) {
			return new ArrayList<tClass>();
		}
		
		return jsDao.selectSearchDetailList(sInfo,dc,pi);
	}

	@Override
	public Collection<? extends classCount> selectRegionMain(searchInfo sInfo) {
		
		/*if(sInfo.getsType().equals("searchDetail")) {
			ArrayList<DetailClass> dc = jsDao.getDetailList(sInfo);
			// 디테일 검색에 대한 지역의 숫자 검색
			return jsDao.selectRegionMainDetail(dc);
		}
		*/
		
		return jsDao.selectRegionMain(sInfo);

	}

	@Override
	public Collection<? extends classCount> selectRegionSub(searchInfo sInfo) {
		
		/*if(sInfo.getsType().equals("searchDetail")) {
			ArrayList<DetailClass> dc = jsDao.getDetailList(sInfo);
			// 디테일 검색에 대한 지역의 숫자 검색
			return jsDao.selectRegionSubDetail(dc);
		}*/
		
		return jsDao.selectRegionSub(sInfo);
	}

}
