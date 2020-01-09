package com.kh.rendez.manager.model.vo;

import java.io.Serializable;

public class AdminLesson implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 9189774766491917793L;
	private int no;
	private String title;
	private String introduction;
	private String target;
	private int price;
	private String rating;
	public AdminLesson() {
		super();
	}
	public AdminLesson(int no, String title, String introduction, String target, int price, String rating) {
		super();
		this.no = no;
		this.title = title;
		this.introduction = introduction;
		this.target = target;
		this.price = price;
		this.rating = rating;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "AdminLesson [no=" + no + ", title=" + title + ", introduction=" + introduction + ", target=" + target
				+ ", price=" + price + ", rating=" + rating + "]";
	}
	
	
	
}
