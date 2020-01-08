package com.kh.rendez.baesung.payment.model.vo;

import java.util.Date;

public class Payment {

	private int pmNo; // 결제번호
	private String paymentStatus; // 결제 상태
	private Date pDate; // 결제일
	private int pCost; // 결제금액
	private String pType; // 결제타입
	private int uNo; // 회원번호
	private int lInning; // 회차 
	private int lNo; // 수업번호
	
	public Payment () {}

	public Payment(int pmNo, String paymentStatus, Date pDate, int pCost, String pType, int uNo, int lInning, int lNo) {
		this.pmNo = pmNo;
		this.paymentStatus = paymentStatus;
		this.pDate = pDate;
		this.pCost = pCost;
		this.pType = pType;
		this.uNo = uNo;
		this.lInning = lInning;
		this.lNo = lNo;
	}

	public Payment(int pCost, String pType, int uNo, int lInning, int lNo) {
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
		return "Payment [pmNo=" + pmNo + ", paymentStatus=" + paymentStatus + ", pDate=" + pDate + ", pCost=" + pCost
				+ ", pType=" + pType + ", uNo=" + uNo + ", lInning=" + lInning + ", lNo=" + lNo + "]";
	}
	
	
	
}
