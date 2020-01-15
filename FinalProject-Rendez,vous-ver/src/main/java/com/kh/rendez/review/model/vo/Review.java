package com.kh.rendez.review.model.vo;

import java.sql.Date;

public class Review {
	
	private int lNo;
	private int uNo;
	private String rContent;
	private int rRating;
	private Date rDate;
	
	
	public Review() {}


	public Review(int lNo, int uNo, String rContent, int rRating, Date rDate) {
		super();
		this.lNo = lNo;
		this.uNo = uNo;
		this.rContent = rContent;
		this.rRating = rRating;
		this.rDate = rDate;
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


	@Override
	public String toString() {
		return "Review [lNo=" + lNo + ", uNo=" + uNo + ", rContent=" + rContent + ", rRating=" + rRating + ", rDate="
				+ rDate + "]";
	}
	
	
	
	
	
	

}
