package com.kh.rendez.baesung.search.model.vo;

import java.util.ArrayList;
import java.util.List;

public class searchInfo {

	private String sType; // 검색 타입
	private String sValue; // 검색내용 
	private String cateMain; // 수업카테고리 메인
	private String cateSub; // 수업카테고리 서브
	private String regionMain; // 수업지역 메인
	private String regionSub; // 수업지역 서브
	private ArrayList sDay; // 요일
	private ArrayList sTime; // 수업시간
	private Integer tType; // 수업형태
	private String day; // 임시 날짜
	private String time; // 임시 시간 
	
	public searchInfo() {}

	public searchInfo(String sType, String sValue) {
		this.sType = sType;
		this.sValue = sValue;
	}

	public searchInfo(String sType, String sValue, String cateMain, String cateSub, String regionMain, String regionSub,
			ArrayList sDay, ArrayList sTime, Integer tType, String day, String time) {
		this.sType = sType;
		this.sValue = sValue;
		this.cateMain = cateMain;
		this.cateSub = cateSub;
		this.regionMain = regionMain;
		this.regionSub = regionSub;
		this.sDay = sDay;
		this.sTime = sTime;
		this.tType = tType;
		this.day = day;
		this.time = time;
	}

	public String getsType() {
		return sType;
	}

	public void setsType(String sType) {
		this.sType = sType;
	}

	public String getsValue() {
		return sValue;
	}

	public void setsValue(String sValue) {
		this.sValue = sValue;
	}

	public String getCateMain() {
		return cateMain;
	}

	public void setCateMain(String cateMain) {
		this.cateMain = cateMain;
	}

	public String getCateSub() {
		return cateSub;
	}

	public void setCateSub(String cateSub) {
		this.cateSub = cateSub;
	}

	public String getRegionMain() {
		return regionMain;
	}

	public void setRegionMain(String regionMain) {
		this.regionMain = regionMain;
	}

	public String getRegionSub() {
		return regionSub;
	}

	public void setRegionSub(String regionSub) {
		this.regionSub = regionSub;
	}

	public ArrayList getsDay() {
		return sDay;
	}

	public void setsDay(ArrayList sDay) {
		this.sDay = sDay;
	}

	public ArrayList getsTime() {
		return sTime;
	}

	public void setsTime(ArrayList sTime) {
		this.sTime = sTime;
	}

	public Integer gettType() {
		return tType;
	}

	public void settType(Integer tType) {
		this.tType = tType;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "searchInfo [sType=" + sType + ", sValue=" + sValue + ", cateMain=" + cateMain + ", cateSub=" + cateSub
				+ ", regionMain=" + regionMain + ", regionSub=" + regionSub + ", sDay=" + sDay + ", sTime=" + sTime
				+ ", tType=" + tType + ", day=" + day + ", time=" + time + "]";
	}

	
	

	
}
