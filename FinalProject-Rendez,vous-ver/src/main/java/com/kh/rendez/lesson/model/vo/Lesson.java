package com.kh.rendez.lesson.model.vo;

import java.sql.Date;
import java.sql.Timestamp;

/**
 * @author Win77
 *
 */
public class Lesson {
	
	private int lInning;
	private int lNo;
	private Date lDay;
	private Timestamp sTime;
	private Timestamp eTime;
	private int price;
	private int total;
	private int remain;
	
	public Lesson() {}

	public Lesson(int lInning, int lNo, Date lDay, Timestamp sTime, Timestamp eTime, int price, int total, int remain) {
		super();
		this.lInning = lInning;
		this.lNo = lNo;
		this.lDay = lDay;
		this.sTime = sTime;
		this.eTime = eTime;
		this.price = price;
		this.total = total;
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

	public Date getlDay() {
		return lDay;
	}

	public void setlDay(Date lDay) {
		this.lDay = lDay;
	}

	public Timestamp getsTime() {
		return sTime;
	}

	public void setsTime(Timestamp sTime) {
		this.sTime = sTime;
	}

	public Timestamp geteTime() {
		return eTime;
	}

	public void seteTime(Timestamp eTime) {
		this.eTime = eTime;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getRemain() {
		return remain;
	}

	public void setRemain(int remain) {
		this.remain = remain;
	}

	@Override
	public String toString() {
		return "Lesson [lInning=" + lInning + ", lNo=" + lNo + ", lDay=" + lDay + ", sTime=" + sTime + ", eTime="
				+ eTime + ", price=" + price + ", total=" + total + ", remain=" + remain + "]";
	}

	
	
	
	


}
