package com.kh.rendez.baesung.search.model.vo;

public class tClass {

	 private int lNo; //수업번호
	 private String lTitle; //수업제목
	 private int price; // 수업가격
	 private String cName; // 수업대표사진
	 private double totalReviewRation; //수업평점
	 private int totalReviewNumber; // 수업리뷰개수
	 private String lRegionSub; // 수업 지역서브
	 private String lRegionDetail; // 수업 상세내역
	 private int userNo; //회원번호
	 private String userName; //튜터이름
	 private String tNick; //튜터별명
	 private String uCName; //튜터 사진
	 private int tUserNumber; //참여인원
	 private String lCateMain; // 카테고리 메인
	 private String lCateSub; // 카테고리 서브
	 
	 public tClass() {}

	public tClass(int lNo, String lTitle, int price, String cName, double totalReviewRation, int totalReviewNumber,
			String lRegionSub, String lRegionDetail, int userNo, String userName, String tNick, String uCName,
			int tUserNumber, String lCateMain, String lCateSub) {
		this.lNo = lNo;
		this.lTitle = lTitle;
		this.price = price;
		this.cName = cName;
		this.totalReviewRation = totalReviewRation;
		this.totalReviewNumber = totalReviewNumber;
		this.lRegionSub = lRegionSub;
		this.lRegionDetail = lRegionDetail;
		this.userNo = userNo;
		this.userName = userName;
		this.tNick = tNick;
		this.uCName = uCName;
		this.tUserNumber = tUserNumber;
		this.lCateMain = lCateMain;
		this.lCateSub = lCateSub;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public double getTotalReviewRation() {
		return totalReviewRation;
	}

	public void setTotalReviewRation(double totalReviewRation) {
		this.totalReviewRation = totalReviewRation;
	}

	public int getTotalReviewNumber() {
		return totalReviewNumber;
	}

	public void setTotalReviewNumber(int totalReviewNumber) {
		this.totalReviewNumber = totalReviewNumber;
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

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String gettNick() {
		return tNick;
	}

	public void settNick(String tNick) {
		this.tNick = tNick;
	}

	public String getuCName() {
		return uCName;
	}

	public void setuCName(String uCName) {
		this.uCName = uCName;
	}

	public int gettUserNumber() {
		return tUserNumber;
	}

	public void settUserNumber(int tUserNumber) {
		this.tUserNumber = tUserNumber;
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

	@Override
	public String toString() {
		return "tClass [lNo=" + lNo + ", lTitle=" + lTitle + ", price=" + price + ", cName=" + cName
				+ ", totalReviewRation=" + totalReviewRation + ", totalReviewNumber=" + totalReviewNumber
				+ ", lRegionSub=" + lRegionSub + ", lRegionDetail=" + lRegionDetail + ", userNo=" + userNo
				+ ", userName=" + userName + ", tNick=" + tNick + ", uCName=" + uCName + ", tUserNumber=" + tUserNumber
				+ ", lCateMain=" + lCateMain + ", lCateSub=" + lCateSub + "]";
	}

	
	
	
	
	
}
