package com.kh.rendez.Wish.model.vo;

import java.sql.Date;

public class Wish {
	private int userNo;
	private String lTitle;
	private String lRegion;
	private String lRegionSub;
	private Date lDay;
	private int total;
	private int price;
	private String oName;
	private String cName;
	private String lStatus;
	private int remain;
	
	public Wish() {}

	public Wish(int userNo, String lTitle, String lRegion, String lRegionSub, Date lDay, int total, int price,
			String oName, String cName, String lStatus, int remain) {
		super();
		this.userNo = userNo;
		this.lTitle = lTitle;
		this.lRegion = lRegion;
		this.lRegionSub = lRegionSub;
		this.lDay = lDay;
		this.total = total;
		this.price = price;
		this.oName = oName;
		this.cName = cName;
		this.lStatus = lStatus;
		this.remain = remain;
	}



	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
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

	public String getlRegionSub() {
		return lRegionSub;
	}

	public void setlRegionSub(String lRegionSub) {
		this.lRegionSub = lRegionSub;
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
		return "WishList [userNo=" + userNo + ", lTitle=" + lTitle + ", lRegion=" + lRegion + ", lRegionSub="
				+ lRegionSub + ", lDay=" + lDay + ", total=" + total + ", price=" + price + ", oName=" + oName
				+ ", cName=" + cName + ", lStatus=" + lStatus + ", remain=" + remain + "]";
	}
	
	
}
