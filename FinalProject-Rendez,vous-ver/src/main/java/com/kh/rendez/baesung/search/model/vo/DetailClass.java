package com.kh.rendez.baesung.search.model.vo;

public class DetailClass {

	int lNo;

	public DetailClass() {}
	
	public DetailClass(int lNo) {
		this.lNo = lNo;
	}

	public int getlNo() {
		return lNo;
	}

	public void setlNo(int lNo) {
		this.lNo = lNo;
	}

	@Override
	public String toString() {
		return "DetailClass [lNo=" + lNo + "]";
	}
	
	
}
