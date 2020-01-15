package com.kh.rendez.lesson.model.vo;

import java.util.Date;

public class LessonReview {
	private int lNo;
	private int uNo; 
	private String rContent;
	private int rRating;
	private Date rDate;
	private String uName;
	private String uCName;
	
	public LessonReview() {}

	public LessonReview(int lNo, int uNo, String rContent, int rRating, Date rDate, String uName, String uCName) {
		super();
		this.lNo = lNo;
		this.uNo = uNo;
		this.rContent = rContent;
		this.rRating = rRating;
		this.rDate = rDate;
		this.uName = uName;
		this.uCName = uCName;
	}

	public int getlNo() {
		return lNo;
	}

	public void setlNo(int lNo) {
		this.lNo = lNo;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public int getrRating() {
		return rRating;
	}

	public void setrRating(int rRating) {
		this.rRating = rRating;
	}

	public Date getrDate() {
		return rDate;
	}

	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuCName() {
		return uCName;
	}

	public void setuCName(String uCName) {
		this.uCName = uCName;
	}

	@Override
	public String toString() {
		return "LessonReview [lNo=" + lNo + ", uNo=" + uNo + ", rContent=" + rContent + ", rRating=" + rRating
				+ ", rDate=" + rDate + ", uName=" + uName + ", uCName=" + uCName + "]";
	}
	
	



	
	

}
