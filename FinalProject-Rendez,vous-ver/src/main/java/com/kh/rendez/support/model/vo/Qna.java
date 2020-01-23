package com.kh.rendez.support.model.vo;

import java.sql.Date;

public class Qna {
	
	private int qNo;
	private int userNo;
	private String qTitle;
	private String qWriter;
	private String qContent;
	private Date qDate;
	private String aStatus;
	private String qStatus;
	
	public Qna() {
		
	}

	public Qna(int qNo, int userNo, String qTitle, String qWriter, String qContent, Date qDate, String aStatus,
			String qStatus) {
		super();
		this.qNo = qNo;
		this.userNo = userNo;
		this.qTitle = qTitle;
		this.qWriter = qWriter;
		this.qContent = qContent;
		this.qDate = qDate;
		this.aStatus = aStatus;
		this.qStatus = qStatus;
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	
	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqWriter() {
		return qWriter;
	}

	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public Date getqDate() {
		return qDate;
	}

	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}

	public String getaStatus() {
		return aStatus;
	}

	public void setaStatus(String aStatus) {
		this.aStatus = aStatus;
	}

	public String getqStatus() {
		return qStatus;
	}

	public void setqStatus(String qStatus) {
		this.qStatus = qStatus;
	}

	@Override
	public String toString() {
		return "Qna [qNo=" + qNo + ", userNo=" + userNo + ", qTitle=" + qTitle + ", qWriter=" + qWriter + ", qContent="
				+ qContent + ", qDate=" + qDate + ", aStatus=" + aStatus + ", qStatus=" + qStatus + "]";
	}

	
	
	
	
	
	
}
