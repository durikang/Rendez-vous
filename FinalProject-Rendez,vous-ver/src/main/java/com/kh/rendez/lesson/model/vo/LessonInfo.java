package com.kh.rendez.lesson.model.vo;

public class LessonInfo {
	
	private int lNo;
	private String lTitle;
	private String lIntroduction;
	private String lTarget;
	private String lYtb;
	private String lRegion;
	private String lRegionSub;
	private String lRegionDetail;
	private String lCateMain;
	private String lCateSub;
	private String lPrice;
	private String lStatus;
	private int uNo;
	
	public LessonInfo() {}

	public LessonInfo(int lNo, String lTitle, String lIntroduction, String lTarget, String lYtb, String lRegion,
			String lRegionSub, String lRegionDetail, String lCateMain, String lCateSub, String lPrice, String lStatus,
			int uNo) {
		super();
		this.lNo = lNo;
		this.lTitle = lTitle;
		this.lIntroduction = lIntroduction;
		this.lTarget = lTarget;
		this.lYtb = lYtb;
		this.lRegion = lRegion;
		this.lRegionSub = lRegionSub;
		this.lRegionDetail = lRegionDetail;
		this.lCateMain = lCateMain;
		this.lCateSub = lCateSub;
		this.lPrice = lPrice;
		this.lStatus = lStatus;
		this.uNo = uNo;
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

	public String getlIntroduction() {
		return lIntroduction;
	}

	public void setlIntroduction(String lIntroduction) {
		this.lIntroduction = lIntroduction;
	}

	public String getlTarget() {
		return lTarget;
	}

	public void setlTarget(String lTarget) {
		this.lTarget = lTarget;
	}

	public String getlYtb() {
		return lYtb;
	}

	public void setlYtb(String lYtb) {
		this.lYtb = lYtb;
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

	public String getlRegionDetail() {
		return lRegionDetail;
	}

	public void setlRegionDetail(String lRegionDetail) {
		this.lRegionDetail = lRegionDetail;
	}

	public String getlCateMain() {
		return lCateMain;
	}

	public void setlCateMain(String lCateMain) {
		this.lCateMain = lCateMain;
	}

	public String getlCateSub() {
		return lCateSub;
	}

	public void setlCateSub(String lCateSub) {
		this.lCateSub = lCateSub;
	}

	public String getlPrice() {
		return lPrice;
	}

	public void setlPrice(String lPrice) {
		this.lPrice = lPrice;
	}

	public String getlStatus() {
		return lStatus;
	}

	public void setlStatus(String lStatus) {
		this.lStatus = lStatus;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	@Override
	public String toString() {
		return "LessonInfo [lNo=" + lNo + ", lTitle=" + lTitle + ", lIntroduction=" + lIntroduction + ", lTarget="
				+ lTarget + ", lYtb=" + lYtb + ", lRegion=" + lRegion + ", lRegionSub=" + lRegionSub
				+ ", lRegionDetail=" + lRegionDetail + ", lCateMain=" + lCateMain + ", lCateSub=" + lCateSub
				+ ", lPrice=" + lPrice + ", lStatus=" + lStatus + ", uNo=" + uNo + "]";
	}

	

	
	

	
	

	

}
