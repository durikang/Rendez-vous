package com.kh.rendez.manager.model.vo;

import java.sql.Date;

public class MemberJoinUserpropic {
	//멤버
	private int uNo;
	private String uId;
	private String uPwd;
	private String uName;
	private String phone;
	private String uGender;
	private int uAge;
	private String address;
	private String uType;
	private String uStatus;
	private Date enrollDate;
	
	//유저 사진
	private String uOriginName;
	private String uChangeName;
	public MemberJoinUserpropic() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberJoinUserpropic(int uNo, String uId, String uPwd, String uName, String phone, String uGender, int uAge,
			String address, String uType, String uStatus, Date enrollDate, String uOriginName, String uChangeName) {
		super();
		this.uNo = uNo;
		this.uId = uId;
		this.uPwd = uPwd;
		this.uName = uName;
		this.phone = phone;
		this.uGender = uGender;
		this.uAge = uAge;
		this.address = address;
		this.uType = uType;
		this.uStatus = uStatus;
		this.enrollDate = enrollDate;
		this.uOriginName = uOriginName;
		this.uChangeName = uChangeName;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getuOriginName() {
		return uOriginName;
	}
	public void setuOriginName(String uOriginName) {
		this.uOriginName = uOriginName;
	}
	public String getuChangeName() {
		return uChangeName;
	}
	public void setuChangeName(String uChangeName) {
		this.uChangeName = uChangeName;
	}
	@Override
	public String toString() {
		return "MemberJoinUserpropic [uNo=" + uNo + ", uId=" + uId + ", uPwd=" + uPwd + ", uName=" + uName + ", phone="
				+ phone + ", uGender=" + uGender + ", uAge=" + uAge + ", address=" + address + ", uType=" + uType
				+ ", uStatus=" + uStatus + ", enrollDate=" + enrollDate + ", uOriginName=" + uOriginName
				+ ", uChangeName=" + uChangeName + "]";
	}
	
	
}
