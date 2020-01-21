package com.kh.rendez.baesung.common;

import java.util.ArrayList;

import com.kh.rendez.baesung.search.model.vo.PageInfo;
import com.kh.rendez.baesung.search.model.vo.classCount;

public class cCListination {

	private static ArrayList<classCount> cCList_index = null;
	
	public static ArrayList<classCount> getcCList() {
		return cCList_index;
	}

	public static void setcCList(ArrayList<classCount> cCList) {
		cCListination.cCList_index = cCList;
	}
	
	
}
