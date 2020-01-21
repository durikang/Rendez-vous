package com.kh.rendez.baesung.payment.model.vo;

public class Coupon {

	private int couponNo;
	private String couponName;
	private String couponCode;
	private int discountRate;
	private String startDate;
	private String endDate;
	private String cStatus;
	private int userNo;
	
	public Coupon () {}

	public Coupon(int couponNo, String couponName, String couponCode, int discountRate, String startDate,
			String endDate, String cStatus, int userNo) {
		this.couponNo = couponNo;
		this.couponName = couponName;
		this.couponCode = couponCode;
		this.discountRate = discountRate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.cStatus = cStatus;
		this.userNo = userNo;
	}

	public int getCouponNo() {
		return couponNo;
	}

	public void setCouponNo(int couponNo) {
		this.couponNo = couponNo;
	}

	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public String getCouponCode() {
		return couponCode;
	}

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}

	public int getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getcStatus() {
		return cStatus;
	}

	public void setcStatus(String cStatus) {
		this.cStatus = cStatus;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "Coupon [couponNo=" + couponNo + ", couponName=" + couponName + ", couponCode=" + couponCode
				+ ", discountRate=" + discountRate + ", startDate=" + startDate + ", endDate=" + endDate + ", cStatus="
				+ cStatus + ", userNo=" + userNo + "]";
	};
	
	
	
}

