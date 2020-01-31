package com.kh.rendez.member.model.vo;

import java.sql.Date;

public class ReviewList {
	private int lNo;
	private int userNo;
	private String lTitle;
	private String rContent;
	private Date rDate;
	
	public ReviewList() {}

	public ReviewList(int lNo, int userNo, String lTitle, String rContent, Date rDate) {
		super();
		this.lNo = lNo;
		this.userNo = userNo;
		this.lTitle = lTitle;
		this.rContent = rContent;
		this.rDate = rDate;
	}

	public int getlNo() {
		return lNo;
	}

	public void setlNo(int lNo) {
		this.lNo = lNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getlTitle() {
		return lTitle;
	}

	public void setlTitle(String lTitle) {
		this.lTitle = lTitle;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public Date getrDate() {
		return rDate;
	}

	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}

	@Override
	public String toString() {
		return "ReviewList [lNo=" + lNo + ", userNo=" + userNo + ", lTitle=" + lTitle + ", rContent=" + rContent
				+ ", rDate=" + rDate + "]";
	}
	
	
}