package com.kh.rendez.tutor.model.vo;

public class Certification {
	
	private int cNo;
	private int uNo;
	private String cTitle;
	private String oFile;
	private String cFile;

	public Certification() {}

	public Certification(int cNo, int uNo, String cTitle, String oFile, String cFile) {
		super();
		this.cNo = cNo;
		this.uNo = uNo;
		this.cTitle = cTitle;
		this.oFile = oFile;
		this.cFile = cFile;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public String getcTitle() {
		return cTitle;
	}

	public void setcTitle(String cTitle) {
		this.cTitle = cTitle;
	}

	public String getoFile() {
		return oFile;
	}

	public void setoFile(String oFile) {
		this.oFile = oFile;
	}

	public String getcFile() {
		return cFile;
	}

	public void setcFile(String cFile) {
		this.cFile = cFile;
	}

	@Override
	public String toString() {
		return "TutorCertification [cNo=" + cNo + ", uNo=" + uNo + ", cTitle=" + cTitle + ", oFile=" + oFile
				+ ", cFile=" + cFile + "]";
	}
	
	
	
}
