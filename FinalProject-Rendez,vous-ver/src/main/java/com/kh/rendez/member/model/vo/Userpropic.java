package com.kh.rendez.member.model.vo;

public class Userpropic {

	private int uNo;
	private String uOriginName;
	private String uChangeName;
	public Userpropic() {
		super();
	}
	public Userpropic(int uNo, String uOriginName, String uChangeName) {
		super();
		this.uNo = uNo;
		this.uOriginName = uOriginName;
		this.uChangeName = uChangeName;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
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
		return "Userpropic [uNo=" + uNo + ", uOriginName=" + uOriginName + ", uChangeName=" + uChangeName + "]";
	}
	
	
}
