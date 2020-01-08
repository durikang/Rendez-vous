package com.kh.rendez.baesung.search.model.service;

import java.util.ArrayList;
import java.util.Collection;

import com.kh.rendez.baesung.search.model.vo.classCount;
import com.kh.rendez.baesung.search.model.vo.searchInfo;
import com.kh.rendez.baesung.search.model.vo.tClass;

public interface SearchService {

	ArrayList<tClass> selectSearchList(searchInfo searchInfo, int currentPage);

	ArrayList<tClass> SearchCateMainList(searchInfo searchInfo, int currentPage);

	ArrayList<tClass> SearchCateSubList(searchInfo searchInfo, int currentPage);

	ArrayList<tClass> selectSearchDetailList(searchInfo sInfo, int currentPage);

	Collection<? extends classCount> selectRegionMain(searchInfo nullInfonation);

	Collection<? extends classCount> selectRegionSub(searchInfo nullInfonation);

}
