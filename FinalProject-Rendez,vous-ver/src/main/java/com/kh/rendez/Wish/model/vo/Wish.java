package com.kh.rendez.Wish.model.vo;

import java.sql.Date;

public class Wish {
	private int user_no;
	private int l_no;
	private int w_no;
	private Date w_date;
	
	public Wish() {}

	public Wish(int user_no, int l_no, int w_no, Date w_date) {
		super();
		this.user_no = user_no;
		this.l_no = l_no;
		this.w_no = w_no;
		this.w_date = w_date;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getL_no() {
		return l_no;
	}

	public void setL_no(int l_no) {
		this.l_no = l_no;
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
		return "Wish [user_no=" + user_no + ", l_no=" + l_no + ", w_no=" + w_no + ", w_date=" + w_date + "]";
	}
	
	

}
