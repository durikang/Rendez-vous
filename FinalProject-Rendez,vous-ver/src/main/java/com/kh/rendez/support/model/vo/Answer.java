package com.kh.rendez.support.model.vo;

import java.sql.Date;

public class Answer {
	
	private int aNo;
	private int refQno;
	private String aWriter;
	private String aContent;
	private Date aDate;
	
	public Answer() {
		
	}

	public Answer(int aNo, int refQno, String aWriter, String aContent, Date aDate) {
		super();
		this.aNo = aNo;
		this.refQno = refQno;
		this.aWriter = aWriter;
		this.aContent = aContent;
		this.aDate = aDate;
	}

	public int getaNo() {
		return aNo;
	}

	public void setaNo(int aNo) {
		this.aNo = aNo;
	}

	public int getRefQno() {
		return refQno;
	}

	public void setRefQno(int refQno) {
		this.refQno = refQno;
	}

	public String getaWriter() {
		return aWriter;
	}

	public void setaWriter(String aWriter) {
		this.aWriter = aWriter;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public Date getaDate() {
		return aDate;
	}

	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}

	@Override
	public String toString() {
		return "Answer [aNo=" + aNo + ", refQno=" + refQno + ", aWriter=" + aWriter + ", aContent=" + aContent
				+ ", aDate=" + aDate + "]";
	}

	
	
	
}
