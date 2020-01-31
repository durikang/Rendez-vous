package com.kh.rendez.home.model.vo;

import java.sql.Date;

public class HomeList {
	
	private int lInning;
	private int lNo;
	private String lTitle;
	private String lRegion;
	private Date lDay;
	private int total;
	private int price;
	private String oName;
	private String cName;
	private String lStatus;
	private int remain;
	
	public HomeList() {
		
	}

	public HomeList(int lInning, int lNo, String lTitle, String lRegion, Date lDay, int total, int price, String oName,
			String cName, String lStatus, int remain) {
		super();
		this.lInning = lInning;
		this.lNo = lNo;
		this.lTitle = lTitle;
		this.lRegion = lRegion;
		this.lDay = lDay;
		this.total = total;
		this.price = price;
		this.oName = oName;
		this.cName = cName;
		this.lStatus = lStatus;
		this.remain = remain;
	}

	public int getlInning() {
		return lInning;
	}

	public void setlInning(int lInning) {
		this.lInning = lInning;
	}

	public int getlNo() {
		return lNo;
	}

	public void setlNo(int lNo) {
		this.lNo = lNo;
	}

	public String getlTitle() {
		return lTitle;
	}

	public void setlTitle(String lTitle) {
		this.lTitle = lTitle;
	}

	public String getlRegion() {
		return lRegion;
	}

	public void setlRegion(String lRegion) {
		this.lRegion = lRegion;
	}

	public Date getlDay() {
		return lDay;
	}

	public void setlDay(Date lDay) {
		this.lDay = lDay;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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

	public String getlStatus() {
		return lStatus;
	}

	public void setlStatus(String lStatus) {
		this.lStatus = lStatus;
	}

	public int getRemain() {
		return remain;
	}

	public void setRemain(int remain) {
		this.remain = remain;
	}

	@Override
	public String toString() {
		return "HomeList [lInning=" + lInning + ", lNo=" + lNo + ", lTitle=" + lTitle + ", lRegion=" + lRegion
				+ ", lDay=" + lDay + ", total=" + total + ", price=" + price + ", oName=" + oName + ", cName=" + cName
				+ ", lStatus=" + lStatus + ", remain=" + remain + "]";
	}
	
}
	
	