package com.kh.rendez.lesson.model.vo;

public class Student {
	
	private int user_no;
	private String user_id;
	private String user_name;
	private String age;
	private String phone;
	private String gender;
	private String uCName;
	
	public Student () {}

	public Student(int user_no, String user_id, String user_name, String age, String phone, String gender,
			String uCName) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_name = user_name;
		this.age = age;
		this.phone = phone;
		this.gender = gender;
		this.uCName = uCName;
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

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getuCName() {
		return uCName;
	}

	public void setuCName(String uCName) {
		this.uCName = uCName;
	}

	@Override
	public String toString() {
		return "Student [user_no=" + user_no + ", user_id=" + user_id + ", user_name=" + user_name + ", age=" + age
				+ ", phone=" + phone + ", gender=" + gender + ", uCName=" + uCName + "]";
	}

	

	
	

}
