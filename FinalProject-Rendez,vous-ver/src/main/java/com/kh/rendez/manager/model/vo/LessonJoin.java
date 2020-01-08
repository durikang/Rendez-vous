package com.kh.rendez.manager.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class LessonJoin implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3160213672500375552L;
	private int lNo;
	private String lTitle;
	private String lIntroduction;
	private String lTarget;
	private int price;
	private String rRating;
	public LessonJoin() {
		super();
	}
	public LessonJoin(int lNo, String lTitle, String lIntroduction, String lTarget, int price, String rRating) {
		super();
		this.lNo = lNo;
		this.lTitle = lTitle;
		this.lIntroduction = lIntroduction;
		this.lTarget = lTarget;
		this.price = price;
		this.rRating = rRating;
	}
	public int getlNo() {
		return lNo;
	}
	public void setlNo(int lNo) {
		this.lNo = lNo;
	}
	public String getlTitle() {
		return lTitle;
	}
	public void setlTitle(String lTitle) {
		this.lTitle = lTitle;
	}
	public String getlIntroduction() {
		return lIntroduction;
	}
	public void setlIntroduction(String lIntroduction) {
		this.lIntroduction = lIntroduction;
	}
	public String getlTarget() {
		return lTarget;
	}
	public void setlTarget(String lTarget) {
		this.lTarget = lTarget;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getrRating() {
		return rRating;
	}
	public void setrRating(String rRating) {
		this.rRating = rRating;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "LessonJoin [lNo=" + lNo + ", lTitle=" + lTitle + ", lIntroduction=" + lIntroduction + ", lTarget="
				+ lTarget + ", price=" + price + ", rRating=" + rRating + "]";
	}
	
	



	
	
}
