package com.kh.rendez.manager.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class AdminMember implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8510493398281114041L;
	private String uNo;
	private String uId;
	private String uPwd;
	private String uName;
	private String uGender;
	private int uAge;
	private String phone;
	private String addr;
	private Date enrollDate;
	private Date updateDate;
	private String uType;
	private String uStatus;
	
	
	
	
	public AdminMember() {
		super();
		// TODO Auto-generated constructor stub
	}




	public AdminMember(String uNo, String uId, String uPwd, String uName, String uGender, int uAge, String phone,
			String addr, Date enrollDate, Date updateDate, String uType, String uStatus) {
		super();
		this.uNo = uNo;
		this.uId = uId;
		this.uPwd = uPwd;
		this.uName = uName;
		this.uGender = uGender;
		this.uAge = uAge;
		this.phone = phone;
		this.addr = addr;
		this.enrollDate = enrollDate;
		this.updateDate = updateDate;
		this.uType = uType;
		this.uStatus = uStatus;
	}




	public String getuNo() {
		return uNo;
	}




	public void setuNo(String uNo) {
		this.uNo = uNo;
	}




	public String getuId() {
		return uId;
	}




	public void setuId(String uId) {
		this.uId = uId;
	}




	public String getuPwd() {
		return uPwd;
	}




	public void setuPwd(String uPwd) {
		this.uPwd = uPwd;
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




	public int getuAge() {
		return uAge;
	}




	public void setuAge(int uAge) {
		this.uAge = uAge;
	}




	public String getPhone() {
		return phone;
	}




	public void setPhone(String phone) {
		this.phone = phone;
	}




	public String getAddr() {
		return addr;
	}




	public void setAddr(String addr) {
		this.addr = addr;
	}




	public Date getEnrollDate() {
		return enrollDate;
	}




	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}




	public Date getUpdateDate() {
		return updateDate;
	}




	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}




	public String getuType() {
		return uType;
	}




	public void setuType(String uType) {
		this.uType = uType;
	}




	public String getuStatus() {
		return uStatus;
	}




	public void setuStatus(String uStatus) {
		this.uStatus = uStatus;
	}




	public static long getSerialversionuid() {
		return serialVersionUID;
	}




	@Override
	public String toString() {
		return "AdminMember [uNo=" + uNo + ", uId=" + uId + ", uPwd=" + uPwd + ", uName=" + uName + ", uGender="
				+ uGender + ", uAge=" + uAge + ", phone=" + phone + ", addr=" + addr + ", enrollDate=" + enrollDate
				+ ", updateDate=" + updateDate + ", uType=" + uType + ", uStatus=" + uStatus + "]";
	}





	
	
	
}
