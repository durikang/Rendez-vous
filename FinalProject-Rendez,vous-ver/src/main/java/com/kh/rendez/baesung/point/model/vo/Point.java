package com.kh.rendez.baesung.point.model.vo;

public class Point {

	private int userNo;
	private int point;
	private String updateDate;
	private String updateType;

	public Point() {}

	public Point(int userNo, int point, String updateDate, String updateType) {
		super();
		this.userNo = userNo;
		this.point = point;
		this.updateDate = updateDate;
		this.updateType = updateType;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public String getUpdateType() {
		return updateType;
	}

	public void setUpdateType(String updateType) {
		this.updateType = updateType;
	}

	@Override
	public String toString() {
		return "Point [userNo=" + userNo + ", point=" + point + ", updateDate=" + updateDate + ", updateType="
				+ updateType + "]";
	}
	
	
	
	
}
