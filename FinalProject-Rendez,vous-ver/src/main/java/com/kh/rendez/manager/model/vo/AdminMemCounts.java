package com.kh.rendez.manager.model.vo;

import java.io.Serializable;

public class AdminMemCounts implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1634811863176005145L;
	private int member;

	public AdminMemCounts() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminMemCounts(int member) {
		super();
		this.member = member;
	}

	public int getMember() {
		return member;
	}

	public void setMember(int member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "AdminMemCounts [member=" + member + "]";
	}
}
