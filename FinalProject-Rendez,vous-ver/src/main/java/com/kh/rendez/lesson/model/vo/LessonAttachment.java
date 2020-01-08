package com.kh.rendez.lesson.model.vo;

import java.sql.Date;

public class LessonAttachment {
	private int laNo;
	private String oName;
	private String cName;
	private int laType;
	private Date laDate;
	private int lNo;

	public LessonAttachment() {}

	public LessonAttachment(int laNo, String oName, String cName, int laType, Date laDate, int lNo) {
		super();
		this.laNo = laNo;
		this.oName = oName;
		this.cName = cName;
		this.laType = laType;
		this.laDate = laDate;
		this.lNo = lNo;
	}

	public int getLaNo() {
		return laNo;
	}

	public void setLaNo(int laNo) {
		this.laNo = laNo;
	}

	public String getoName() {
		return oName;
	}

	public void setoName(String oName) {
		this.oName = oName;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public int getLaType() {
		return laType;
	}

	public void setLaType(int laType) {
		this.laType = laType;
	}

	public Date getLaDate() {
		return laDate;
	}

	public void setLaDate(Date laDate) {
		this.laDate = laDate;
	}

	public int getlNo() {
		return lNo;
	}

	public void setlNo(int lNo) {
		this.lNo = lNo;
	}

	@Override
	public String toString() {
		return "LessonAttachment [laNo=" + laNo + ", oName=" + oName + ", cName=" + cName + ", laType=" + laType
				+ ", laDate=" + laDate + ", lNo=" + lNo + "]";
	}
	
	
}
