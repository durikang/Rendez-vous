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
	private String gender;
	private int Age;
	private String phone;
	private String addr;
	private Date enrollDate;
	private Date updateDate;
	private String userType;
	private String uStatus;
	
	private int count;
	
	public AdminMember() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminMember(String uNo, String uId, String uPwd, String uName, String gender, int age, String phone,
			String addr, Date enrollDate, Date updateDate, String userType, String uStatus, int count) {
		super();
		this.uNo = uNo;
		this.uId = uId;
		this.uPwd = uPwd;
		this.uName = uName;
		this.gender = gender;
		Age = age;
		this.phone = phone;
		this.addr = addr;
		this.enrollDate = enrollDate;
		this.updateDate = updateDate;
		this.userType = userType;
		this.uStatus = uStatus;
		this.count = count;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return Age;
	}

	public void setAge(int age) {
		Age = age;
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

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getuStatus() {
		return uStatus;
	}

	public void setuStatus(String uStatus) {
		this.uStatus = uStatus;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "AdminMember [uNo=" + uNo + ", uId=" + uId + ", uPwd=" + uPwd + ", uName=" + uName + ", gender=" + gender
				+ ", Age=" + Age + ", phone=" + phone + ", addr=" + addr + ", enrollDate=" + enrollDate
				+ ", updateDate=" + updateDate + ", userType=" + userType + ", uStatus=" + uStatus + ", count=" + count
				+ "]";
	}
	
	
	
}
