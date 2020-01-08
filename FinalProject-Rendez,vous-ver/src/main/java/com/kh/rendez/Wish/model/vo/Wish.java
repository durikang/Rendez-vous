package com.kh.rendez.Wish.model.vo;

import java.sql.Date;

public class Wish {
	private int w_no;
	private Date w_date;
	
	public Wish() {}

	public Wish(int w_no, Date w_date) {
		super();
		this.w_no = w_no;
		this.w_date = w_date;
	}

	public int getW_no() {
		return w_no;
	}

	public void setW_no(int w_no) {
		this.w_no = w_no;
	}

	public Date getW_date() {
		return w_date;
	}

	public void setW_date(Date w_date) {
		this.w_date = w_date;
	}

	@Override
	public String toString() {
		return "Wish [w_no=" + w_no + ", w_date=" + w_date + "]";
	}
	
	

}
