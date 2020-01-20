package com.kh.rendez.baesung.payment.model.vo;

public class InsertCouponInfo {

	private String code;
	private int userNo;
	
	public InsertCouponInfo() {}

	public InsertCouponInfo(String code, int userNo) {
		this.code = code;
		this.userNo = userNo;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "InsertCouponInfo [code=" + code + ", userNo=" + userNo + "]";
	}
	
	
	
}
