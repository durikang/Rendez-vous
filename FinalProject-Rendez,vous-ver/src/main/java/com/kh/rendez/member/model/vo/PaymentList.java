package com.kh.rendez.member.model.vo;

import java.sql.Date;

public class PaymentList {

	private int pmNo; // 결제번호
	private String l_title; //수업제목
	private String paymentStatus; // 결제 상태
	private Date pDate; // 결제일
	private int pCost; // 결제금액
	private String pType; // 결제타입
	private int uNo; // 회원번호
	private int lInning; // 회차 
	private int lNo; // 수업번호
	
	public PaymentList () {}

	public PaymentList(int pmNo, String l_title, String paymentStatus, Date pDate, int pCost, String pType, int uNo,
			int lInning, int lNo) {
		super();
		this.pmNo = pmNo;
		this.l_title = l_title;
		this.paymentStatus = paymentStatus;
		this.pDate = pDate;
		this.pCost = pCost;
		this.pType = pType;
		this.uNo = uNo;
		this.lInning = lInning;
		this.lNo = lNo;
	}

	public int getPmNo() {
		return pmNo;
	}

	public void setPmNo(int pmNo) {
		this.pmNo = pmNo;
	}

	public String getL_title() {
		return l_title;
	}

	public void setL_title(String l_title) {
		this.l_title = l_title;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public Date getpDate() {
		return pDate;
	}

	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}

	public int getpCost() {
		return pCost;
	}

	public void setpCost(int pCost) {
		this.pCost = pCost;
	}

	public String getpType() {
		return pType;
	}

	public void setpType(String pType) {
		this.pType = pType;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public int getlInning() {
		return lInning;
	}

	public void setlInning(int lInning) {
		this.lInning = lInning;
	}

	public int getlNo() {
		return lNo;
	}

	public void setlNo(int lNo) {
		this.lNo = lNo;
	}

	@Override
	public String toString() {
		return "Paymentlist [pmNo=" + pmNo + ", l_title=" + l_title + ", paymentStatus=" + paymentStatus + ", pDate="
				+ pDate + ", pCost=" + pCost + ", pType=" + pType + ", uNo=" + uNo + ", lInning=" + lInning + ", lNo="
				+ lNo + "]";
	}

	
	
	
}
