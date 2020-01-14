package com.kh.rendez.member.model.vo;

import java.sql.Date;

public class Member {
	private int user_no;
	private String user_id;
	private String user_pwd;
	private String user_name;
	private String gender;
	private int age;
	private String phone;
	private String address;
	private Date enroll_date;
	private Date update_date;
	private String user_type;
	private String uStatus;
	
	public Member() {
		
	}

	public Member(int user_no, String user_id, String user_pwd, String user_name, String gender, int age, String phone,
			String address, Date enroll_date, Date update_date, String user_type, String uStatus) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_name = user_name;
		this.gender = gender;
		this.age = age;
		this.phone = phone;
		this.address = address;
		this.enroll_date = enroll_date;
		this.update_date = update_date;
		this.user_type = user_type;
		this.uStatus = uStatus;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getEnroll_date() {
		return enroll_date;
	}

	public void setEnroll_date(Date enroll_date) {
		this.enroll_date = enroll_date;
	}

	public Date getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public String getuStatus() {
		return uStatus;
	}

	public void setuStatus(String uStatus) {
		this.uStatus = uStatus;
	}

	@Override
	public String toString() {
		return "Member [user_no=" + user_no + ", user_id=" + user_id + ", user_pwd=" + user_pwd + ", user_name="
				+ user_name + ", gender=" + gender + ", age=" + age + ", phone=" + phone + ", address=" + address
				+ ", enroll_date=" + enroll_date + ", update_date=" + update_date + ", user_type=" + user_type
				+ ", uStatus=" + uStatus + "]";
	}

	
	
}