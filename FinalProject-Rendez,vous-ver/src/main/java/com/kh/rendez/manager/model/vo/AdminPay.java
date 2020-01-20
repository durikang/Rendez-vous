package com.kh.rendez.manager.model.vo;

import java.sql.Date;

public class AdminPay {
	private int pNo;
	private String pStatus;
	private Date pDate;
	private int pCost;
	private String pType;
	private int uNo;
	private String lInning;
	private int lNo;
	
	private int sum;
	
	public AdminPay() {
		super();
	}

	public AdminPay(int pNo, String pStatus, Date pDate, int pCost, String pType, int uNo, String lInning, int lNo,
			int sum) {
		super();
		this.pNo = pNo;
		this.pStatus = pStatus;
		this.pDate = pDate;
		this.pCost = pCost;
		this.pType = pType;
		this.uNo = uNo;
		this.lInning = lInning;
		this.lNo = lNo;
		this.sum = sum;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpStatus() {
		return pStatus;
	}

	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
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

	public String getlInning() {
		return lInning;
	}

	public void setlInning(String lInning) {
		this.lInning = lInning;
	}

	public int getlNo() {
		return lNo;
	}

	public void setlNo(int lNo) {
		this.lNo = lNo;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	@Override
	public String toString() {
		return "AdminPay [pNo=" + pNo + ", pStatus=" + pStatus + ", pDate=" + pDate + ", pCost=" + pCost + ", pType="
				+ pType + ", uNo=" + uNo + ", lInning=" + lInning + ", lNo=" + lNo + ", sum=" + sum + "]";
	}
	
	
}
