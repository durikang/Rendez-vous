package com.kh.rendez.manager.model.vo;

import java.sql.Date;

public class Coupon {
	private int cNo;
	private String cName;
	private String cCode;
	private String disRate;
	private Date startDate;
	private Date endDate;
	private String status;
	private int uNo;
	public Coupon() {
		super();
	}
	public Coupon(int cNo, String cName, String cCode, String disRate, Date startDate, Date endDate, String status,
			int uNo) {
		super();
		this.cNo = cNo;
		this.cName = cName;
		this.cCode = cCode;
		this.disRate = disRate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.status = status;
		this.uNo = uNo;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	public String getDisRate() {
		return disRate;
	}
	public void setDisRate(String disRate) {
		this.disRate = disRate;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	
	@Override
	public String toString() {
		return "Coupon [cNo=" + cNo + ", cName=" + cName + ", cCode=" + cCode + ", disRate=" + disRate + ", startDate="
				+ startDate + ", endDate=" + endDate + ", status=" + status + ", uNo=" + uNo + "]";
	}

}
