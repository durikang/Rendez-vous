package com.kh.rendez.manager.model.vo;

public class Certification {

	private int tuNo; //튜터 경력 시퀀스
	private int uNo;
	private String tuTitle; // 튜터 경력명
	private String originName;
	private String changeName;
	public Certification() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Certification(int tuNo, int uNo, String tuTitle, String originName, String changeName) {
		super();
		this.tuNo = tuNo;
		this.uNo = uNo;
		this.tuTitle = tuTitle;
		this.originName = originName;
		this.changeName = changeName;
	}
	public int getTuNo() {
		return tuNo;
	}
	public void setTuNo(int tuNo) {
		this.tuNo = tuNo;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public String getTuTitle() {
		return tuTitle;
	}
	public void setTuTitle(String tuTitle) {
		this.tuTitle = tuTitle;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getChangeName() {
		return changeName;
	}
	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	@Override
	public String toString() {
		return "Certification [tuNo=" + tuNo + ", uNo=" + uNo + ", tuTitle=" + tuTitle + ", originName=" + originName
				+ ", changeName=" + changeName + "]";
	}
	
	
	
	
}
