package com.kh.rendez.tutor.model.vo;

public class Tutor {
	private int uNo;
	private String tNick;
	private String tCareer;
	private String tInfo;
	private String tSocial;
	private String tStatus;
	
	public Tutor() {}

	public Tutor(int uNo, String tNick, String tCareer, String tInfo, String tSocial, String tStatus) {
		super();
		this.uNo = uNo;
		this.tNick = tNick;
		this.tCareer = tCareer;
		this.tInfo = tInfo;
		this.tSocial = tSocial;
		this.tStatus = tStatus;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public String gettNick() {
		return tNick;
	}

	public void settNick(String tNick) {
		this.tNick = tNick;
	}

	public String gettCareer() {
		return tCareer;
	}

	public void settCareer(String tCareer) {
		this.tCareer = tCareer;
	}

	public String gettInfo() {
		return tInfo;
	}

	public void settInfo(String tInfo) {
		this.tInfo = tInfo;
	}

	public String gettSocial() {
		return tSocial;
	}

	public void settSocial(String tSocial) {
		this.tSocial = tSocial;
	}

	public String gettStatus() {
		return tStatus;
	}

	public void settStatus(String tStatus) {
		this.tStatus = tStatus;
	}

	@Override
	public String toString() {
		return "Tutor [uNo=" + uNo + ", tNick=" + tNick + ", tCareer=" + tCareer + ", tInfo=" + tInfo + ", tSocial="
				+ tSocial + ", tStatus=" + tStatus + "]";
	}
	
	
	
	
	
}
