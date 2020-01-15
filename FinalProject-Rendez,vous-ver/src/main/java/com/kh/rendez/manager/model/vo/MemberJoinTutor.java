package com.kh.rendez.manager.model.vo;

public class MemberJoinTutor {
	//멤버
	private int uNo;
	private String uId;
	private String uType;
	
//	튜터 정보
	private String tuNick;
	private String tuCareer;
	private String tuInfo;
	private String tuSocial;
	private String tuStatus;
	
	
	public MemberJoinTutor() {
		super();
	}


	public MemberJoinTutor(int uNo, String uId, String uType, String tuNick, String tuCareer, String tuInfo,
			String tuSocial, String tuStatus) {
		super();
		this.uNo = uNo;
		this.uId = uId;
		this.uType = uType;
		this.tuNick = tuNick;
		this.tuCareer = tuCareer;
		this.tuInfo = tuInfo;
		this.tuSocial = tuSocial;
		this.tuStatus = tuStatus;
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


	public String getuType() {
		return uType;
	}


	public void setuType(String uType) {
		this.uType = uType;
	}


	public String getTuNick() {
		return tuNick;
	}


	public void setTuNick(String tuNick) {
		this.tuNick = tuNick;
	}


	public String getTuCareer() {
		return tuCareer;
	}


	public void setTuCareer(String tuCareer) {
		this.tuCareer = tuCareer;
	}


	public String getTuInfo() {
		return tuInfo;
	}


	public void setTuInfo(String tuInfo) {
		this.tuInfo = tuInfo;
	}


	public String getTuSocial() {
		return tuSocial;
	}


	public void setTuSocial(String tuSocial) {
		this.tuSocial = tuSocial;
	}


	public String getTuStatus() {
		return tuStatus;
	}


	public void setTuStatus(String tuStatus) {
		this.tuStatus = tuStatus;
	}


	@Override
	public String toString() {
		return "MemberJoinTutor [uNo=" + uNo + ", uId=" + uId + ", uType=" + uType + ", tuNick=" + tuNick
				+ ", tuCareer=" + tuCareer + ", tuInfo=" + tuInfo + ", tuSocial=" + tuSocial + ", tuStatus=" + tuStatus
				+ "]";
	}







	
	
	
}
