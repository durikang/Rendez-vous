
package com.kh.rendez.manager.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class AdminMemJoinPay implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1625587781545094195L;
	private int uNo;
	private String uId;
	private String uName;
	private String uGender;
	private int total_pay;
	private Date enrollDate;
	public AdminMemJoinPay() {
		super();
	}
	public AdminMemJoinPay(int uNo, String uId, String uName, String gender, int total_pay, Date enrollDate) {
		super();
		this.uNo = uNo;
		this.uId = uId;
		this.uName = uName;
		uGender = gender;
		this.total_pay = total_pay;
		this.enrollDate = enrollDate;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuGender() {
		return uGender;
	}
	public void setuGender(String uGender) {
		this.uGender = uGender;
	}
	public int getTotal_pay() {
		return total_pay;
	}
	public void setTotal_pay(int total_pay) {
		this.total_pay = total_pay;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	@Override
	public String toString() {
		return "AdminMemJoinPay [uNo=" + uNo + ", uId=" + uId + ", uName=" + uName + ", uGender=" + uGender
				+ ", total_pay=" + total_pay + ", enrollDate=" + enrollDate + "]";
	}
	
	
}
