package com.kh.rendez.manager.model.vo;

import java.io.Serializable;

public class AdminStatic implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4182864159792840210L;
	
	private int todayMember; //오늘 가입자 수
	private int thisMonthMember; // 이번달 가입자 수 
	
	private int todayPay; //오늘 결재 총액
	private int thisMonthPay; // 이번달 결재 총액
	
	public AdminStatic() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminStatic(int todayMember, int thisMonthMember, int todayPay, int thisMonthPay) {
		super();
		this.todayMember = todayMember;
		this.thisMonthMember = thisMonthMember;
		this.todayPay = todayPay;
		this.thisMonthPay = thisMonthPay;
	}
	public int getTodayMember() {
		return todayMember;
	}
	public void setTodayMember(int todayMember) {
		this.todayMember = todayMember;
	}
	public int getThisMonthMember() {
		return thisMonthMember;
	}
	public void setThisMonthMember(int thisMonthMember) {
		this.thisMonthMember = thisMonthMember;
	}
	public int getTodayPay() {
		return todayPay;
	}
	public void setTodayPay(int todayPay) {
		this.todayPay = todayPay;
	}
	public int getThisMonthPay() {
		return thisMonthPay;
	}
	public void setThisMonthPay(int thisMonthPay) {
		this.thisMonthPay = thisMonthPay;
	}
	@Override
	public String toString() {
		return "AdminStatic [todayMember=" + todayMember + ", thisMonthMember=" + thisMonthMember + ", todayPay="
				+ todayPay + ", thisMonthPay=" + thisMonthPay + "]";
	}
	
	
	
}
