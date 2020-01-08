package com.kh.rendez.baesung.payment.model.vo;

public class LessonTime {

	private int lNo;
	private int lInning;
	private String lDay;
	private String lTime;
	private int remain;
	private int total;
	
	public LessonTime() {}
	
	
	
	public LessonTime(int lNo, int lInning) {
		this.lNo = lNo;
		this.lInning = lInning;
	}



	public LessonTime(int lNo, int lInning, String lDay, String lTime, int remain, int total) {
		this.lNo = lNo;
		this.lInning = lInning;
		this.lDay = lDay;
		this.lTime = lTime;
		this.remain = remain;
		this.total = total;
	}
	public int getlNo() {
		return lNo;
	}
	public void setlNo(int lNo) {
		this.lNo = lNo;
	}
	public int getlInning() {
		return lInning;
	}
	public void setlInning(int lInning) {
		this.lInning = lInning;
	}
	public String getlDay() {
		return lDay;
	}
	public void setlDay(String lDay) {
		this.lDay = lDay;
	}
	public String getlTime() {
		return lTime;
	}
	public void setlTime(String lTime) {
		this.lTime = lTime;
	}
	public int getRemain() {
		return remain;
	}
	public void setRemain(int remain) {
		this.remain = remain;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "LessonTime [lNo=" + lNo + ", lInning=" + lInning + ", lDay=" + lDay + ", lTime=" + lTime + ", remain="
				+ remain + ", total=" + total + "]";
	}
	
	
	
	
	
}
