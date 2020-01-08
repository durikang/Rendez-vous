package com.kh.rendez.manager.model.vo;

import java.util.ArrayList;

public class MemberJoinTutor {
	//멤버
	private int uNo;
	
	private String uType;
	
//	튜터 정보
	private String tuNick;
	private String tuCareer;
	private String tuInfo;
	private String tuSocial;
	private String tuStatus;
	
// 튜터 경력인증
	private ArrayList<Certification> certi= new ArrayList<>();
	
	public MemberJoinTutor() {
		super();
	}

	public MemberJoinTutor(int uNo, String uType, String tuNick, String tuCareer, String tuInfo, String tuSocial,
			String tuStatus, ArrayList<Certification> certi) {
		super();
		this.uNo = uNo;
		this.uType = uType;
		this.tuNick = tuNick;
		this.tuCareer = tuCareer;
		this.tuInfo = tuInfo;
		this.tuSocial = tuSocial;
		this.tuStatus = tuStatus;
		this.certi = certi;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
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

	public ArrayList<Certification> getCerti() {
		return certi;
	}

	public void setCerti(ArrayList<Certification> certi) {
		this.certi = certi;
	}

	@Override
	public String toString() {
		return "MemberJoinTutor [uNo=" + uNo + ", uType=" + uType + ", tuNick=" + tuNick + ", tuCareer=" + tuCareer
				+ ", tuInfo=" + tuInfo + ", tuSocial=" + tuSocial + ", tuStatus=" + tuStatus + ", certi=" + certi + "]";
	}




	
	
	
}
