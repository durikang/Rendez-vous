package com.kh.rendez.member.model.vo;

import java.sql.Date;

public class WishList {
	private int l_no;
	private String l_title;
	private String l_region;
	private String l_region_sub;
	private Date l_day;
	private String total;
	private String price;
	private String o_name;
	private String c_name;
	private String l_status;
	private String remain;
	
	public WishList() {
		
	}

	public WishList(int l_no, String l_title, String l_region, String l_region_sub, Date l_day, String total,
			String price, String o_name, String c_name, String l_status, String remain) {
		super();
		this.l_no = l_no;
		this.l_title = l_title;
		this.l_region = l_region;
		this.l_region_sub = l_region_sub;
		this.l_day = l_day;
		this.total = total;
		this.price = price;
		this.o_name = o_name;
		this.c_name = c_name;
		this.l_status = l_status;
		this.remain = remain;
	}

	public int getL_no() {
		return l_no;
	}

	public void setL_no(int l_no) {
		this.l_no = l_no;
	}

	public String getL_title() {
		return l_title;
	}

	public void setL_title(String l_title) {
		this.l_title = l_title;
	}

	public String getL_region() {
		return l_region;
	}

	public void setL_region(String l_region) {
		this.l_region = l_region;
	}

	public String getL_region_sub() {
		return l_region_sub;
	}

	public void setL_region_sub(String l_region_sub) {
		this.l_region_sub = l_region_sub;
	}

	public Date getL_day() {
		return l_day;
	}

	public void setL_day(Date l_day) {
		this.l_day = l_day;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getO_name() {
		return o_name;
	}

	public void setO_name(String o_name) {
		this.o_name = o_name;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getL_status() {
		return l_status;
	}

	public void setL_status(String l_status) {
		this.l_status = l_status;
	}

	public String getRemain() {
		return remain;
	}

	public void setRemain(String remain) {
		this.remain = remain;
	}

	@Override
	public String toString() {
		return "WishList [l_no=" + l_no + ", l_title=" + l_title + ", l_region=" + l_region + ", l_region_sub="
				+ l_region_sub + ", l_day=" + l_day + ", total=" + total + ", price=" + price + ", o_name=" + o_name
				+ ", c_name=" + c_name + ", l_status=" + l_status + ", remain=" + remain + "]";
	}
	
	
	
	
	

}
