package com.kh.rendez.lesson.model.vo;

import java.util.ArrayList;

import com.kh.rendez.tutor.model.vo.Tutor;

public class LessonDetailInfo {
	
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
	private ArrayList<LessonAttachment> laList;
	private Tutor tutor;
	private String uName;
	private String ucName;
	
	public LessonDetailInfo() {}

	public LessonDetailInfo(int lNo, String lTitle, String lIntroduction, String lTarget, String lYtb, String lRegion,
			String lRegionSub, String lRegionDetail, String lCateMain, String lCateSub, String lPrice, String lStatus,
			int uNo, ArrayList<LessonAttachment> laList, Tutor tutor, String uName, String ucName) {
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
		this.laList = laList;
		this.tutor = tutor;
		this.uName = uName;
		this.ucName = ucName;
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

	public ArrayList<LessonAttachment> getLaList() {
		return laList;
	}

	public void setLaList(ArrayList<LessonAttachment> laList) {
		this.laList = laList;
	}

	public Tutor getTutor() {
		return tutor;
	}

	public void setTutor(Tutor tutor) {
		this.tutor = tutor;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getUcName() {
		return ucName;
	}

	public void setUcName(String ucName) {
		this.ucName = ucName;
	}

	@Override
	public String toString() {
		return "LessonDetailInfo [lNo=" + lNo + ", lTitle=" + lTitle + ", lIntroduction=" + lIntroduction + ", lTarget="
				+ lTarget + ", lYtb=" + lYtb + ", lRegion=" + lRegion + ", lRegionSub=" + lRegionSub
				+ ", lRegionDetail=" + lRegionDetail + ", lCateMain=" + lCateMain + ", lCateSub=" + lCateSub
				+ ", lPrice=" + lPrice + ", lStatus=" + lStatus + ", uNo=" + uNo + ", laList=" + laList + ", tutor="
				+ tutor + ", uName=" + uName + ", ucName=" + ucName + "]";
	}
	
	

}
