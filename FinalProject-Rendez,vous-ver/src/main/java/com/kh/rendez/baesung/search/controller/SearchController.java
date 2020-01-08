package com.kh.rendez.baesung.search.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.baesung.common.Pagination;
import com.kh.rendez.baesung.common.SearchInfonation;
import com.kh.rendez.baesung.search.model.service.SearchService;
import com.kh.rendez.baesung.search.model.vo.classCount;
import com.kh.rendez.baesung.search.model.vo.searchInfo;
import com.kh.rendez.baesung.search.model.vo.tClass;

@Controller
public class SearchController {
	@Autowired
	SearchService jsService;
	
	SearchInfonation sIf = new SearchInfonation();
	
	@RequestMapping("search.do")
	public ModelAndView SearchList(ModelAndView mv, searchInfo sInfo,
			@RequestParam(value="currentPage", required=false) Integer page) {
		
		int currentPage = page != null ? page : 1;
		sInfo.setsType("Search");
		
		ArrayList<tClass> sList = jsService.selectSearchList(sIf.nullInfonation(sInfo),currentPage);
		
		ArrayList<classCount> cCList = new ArrayList();
		cCList.addAll(jsService.selectRegionMain(sIf.nullInfonation(sInfo)));
		cCList.addAll(jsService.selectRegionSub(sIf.nullInfonation(sInfo)));
		
		int result = 0;
		for(classCount cc : cCList) {		
			if(cc.getlType().equals("RegionSub")) {
				result += cc.getCount();}}

		cCList.add(new classCount("",result,"All"));
		//System.out.println(cCList);
		
		mv.addObject("sList", sList);
		mv.addObject("cCList",cCList);
		mv.addObject("pi", Pagination.getPageInfo());
		mv.addObject("sInfo", sInfo);
		mv.setViewName("baesung/search/Search");
		
		return mv;
	}
	
	@RequestMapping("cateMain.do")
	public ModelAndView SearchCateMainList(ModelAndView mv, searchInfo sInfo, 
			@RequestParam(value="currentPage", required=false) Integer page) {
		
		int currentPage = page != null ? page : 1;
		sInfo.setsType("Main");
		/*System.out.println("가기전 : " + sInfo);*/
		
		ArrayList<tClass> sList = jsService.SearchCateMainList(sIf.nullInfonation(sInfo), currentPage);
		
		ArrayList<classCount> cCList = new ArrayList();
		cCList.addAll(jsService.selectRegionMain(sIf.nullInfonation(sInfo)));
		cCList.addAll(jsService.selectRegionSub(sIf.nullInfonation(sInfo)));
		int result = 0;
		for(classCount cc : cCList) {		
			if(cc.getlType().equals("RegionSub")) {
				result++;}}

		cCList.add(new classCount("",result,"All"));

		mv.addObject("sList", sList);
		mv.addObject("cCList",cCList);
		mv.addObject("pi", Pagination.getPageInfo());
		mv.addObject("sInfo", sInfo);
		mv.setViewName("baesung/search/Search");
		
		return mv;		
	}
	
	@RequestMapping("cateSub.do")
	public ModelAndView SearchCateSubList(ModelAndView mv, searchInfo sInfo,
			@RequestParam(value="currentPage", required=false) Integer page) {
		
		int currentPage = page != null ? page : 1;
		sInfo.setsType("Sub");
		/*System.out.println("가기전 : " + sInfo);*/
		ArrayList<tClass> sList = jsService.SearchCateSubList(sIf.nullInfonation(sInfo), currentPage);
		
		ArrayList<classCount> cCList = new ArrayList();
		cCList.addAll(jsService.selectRegionMain(sIf.nullInfonation(sInfo)));
		cCList.addAll(jsService.selectRegionSub(sIf.nullInfonation(sInfo)));
		int result = 0;
		for(classCount cc : cCList) {		
			if(cc.getlType().equals("RegionSub")) {
				result++;}}

		cCList.add(new classCount("",result,"All"));
		
		/*System.out.println(sInfo);*/
		mv.addObject("sList", sList);
		mv.addObject("cCList",cCList);
		mv.addObject("pi", Pagination.getPageInfo());
		if(sList.size() != 0) {sInfo.setCateMain(sList.get(0).getlCateMain());}
		mv.addObject("sInfo", sInfo);
		mv.setViewName("baesung/search/Search");
		
		return mv;		
	}
	
	@RequestMapping("detailSearch.do")
	public ModelAndView detailSearchList(ModelAndView mv,
			searchInfo sInfo,@RequestParam(value="currentPage", required=false) Integer page) {
		
		int currentPage = page != null ? page : 1;
		sInfo.setsType("searchDetail");
		
		if(!sInfo.getDay().equals("")) {
		sInfo.setsDay(new ArrayList());
		String[] dayArray = sInfo.getDay().split(",");
		for(int i = 0; i < dayArray.length; i++) {
			sInfo.getsDay().add(dayArray[i]);	
		}}
		
		if(!sInfo.getTime().equals("")) {
		sInfo.setsTime(new ArrayList());
		String[] timeArray = sInfo.getTime().split(",");
		for(int i = 0; i < timeArray.length; i++) {
			sInfo.getsTime().add(timeArray[i]);	
		}}
		
		
		if(!sInfo.getsValue().equals("")) {
				
			/*System.out.println(sInfo);*/
			ArrayList<tClass> sList = jsService.selectSearchDetailList(sIf.nullInfonation(sInfo),currentPage);
		
			//System.out.println(sList);
			mv.addObject("sList", sList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.addObject("sInfo", sInfo);
			mv.setViewName("baesung/search/Search");
			

		}else if(!sInfo.getCateSub().equals("")) {
			//System.out.println("서브카테고리 선택");
			//System.out.println(sInfo);
			
			ArrayList<tClass> sList = jsService.selectSearchDetailList(sIf.nullInfonation(sInfo),currentPage);
		
			//System.out.println(sList);
			mv.addObject("sList", sList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.addObject("sInfo", sInfo);
			mv.setViewName("baesung/search/Search");
			
		}else {
			//System.out.println("메인 카테로기 입력");
			//System.out.println(sInfo);
			
			ArrayList<tClass> sList = jsService.selectSearchDetailList(sIf.nullInfonation(sInfo),currentPage);
			
			//System.out.println(sList);
			mv.addObject("sList", sList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.addObject("sInfo", sInfo);
			mv.setViewName("baesung/search/Search");
		}
			
		
		
		return mv;
		
	}
	
	
	
	
}
