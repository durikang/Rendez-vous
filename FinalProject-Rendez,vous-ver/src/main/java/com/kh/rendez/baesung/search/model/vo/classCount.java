package com.kh.rendez.baesung.search.model.vo;

public class classCount {

	private String location; // 지역
	private int count; // 수
	private String lType; // 지역타입 
	
	public classCount() {}

	public classCount(String location, int count, String lType) {
		super();
		this.location = location;
		this.count = count;
		this.lType = lType;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getlType() {
		return lType;
	}

	public void setlType(String lType) {
		this.lType = lType;
	}

	@Override
	public String toString() {
		return "classCount [location=" + location + ", count=" + count + ", lType=" + lType + "]";
	}
	
	
	
}
