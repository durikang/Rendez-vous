package com.kh.rendez.manager.model.vo;

import java.io.Serializable;

public class AdminMonthsStatic implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7235520493648863114L;
	private String january;
	private String february;
	private String march;
	private String april;
	private String may;
	private String june;
	private String july;
	private String august;
	private String september;
	private String october;
	private String november;
	private String decemver;
	public AdminMonthsStatic() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminMonthsStatic(String january, String february, String march, String april, String may, String june,
			String july, String august, String september, String october, String november, String decemver) {
		super();
		this.january = january;
		this.february = february;
		this.march = march;
		this.april = april;
		this.may = may;
		this.june = june;
		this.july = july;
		this.august = august;
		this.september = september;
		this.october = october;
		this.november = november;
		this.decemver = decemver;
	}
	public String getJanuary() {
		return january;
	}
	public void setJanuary(String january) {
		this.january = january;
	}
	public String getFebruary() {
		return february;
	}
	public void setFebruary(String february) {
		this.february = february;
	}
	public String getMarch() {
		return march;
	}
	public void setMarch(String march) {
		this.march = march;
	}
	public String getApril() {
		return april;
	}
	public void setApril(String april) {
		this.april = april;
	}
	public String getMay() {
		return may;
	}
	public void setMay(String may) {
		this.may = may;
	}
	public String getJune() {
		return june;
	}
	public void setJune(String june) {
		this.june = june;
	}
	public String getJuly() {
		return july;
	}
	public void setJuly(String july) {
		this.july = july;
	}
	public String getAugust() {
		return august;
	}
	public void setAugust(String august) {
		this.august = august;
	}
	public String getSeptember() {
		return september;
	}
	public void setSeptember(String september) {
		this.september = september;
	}
	public String getOctober() {
		return october;
	}
	public void setOctober(String october) {
		this.october = october;
	}
	public String getNovember() {
		return november;
	}
	public void setNovember(String november) {
		this.november = november;
	}
	public String getDecemver() {
		return decemver;
	}
	public void setDecemver(String decemver) {
		this.decemver = decemver;
	}
	@Override
	public String toString() {
		return "AdminMonthsStatic [january=" + january + ", february=" + february + ", march=" + march + ", april="
				+ april + ", may=" + may + ", june=" + june + ", july=" + july + ", august=" + august + ", september="
				+ september + ", october=" + october + ", november=" + november + ", decemver=" + decemver + "]";
	}
	
	
	

}
