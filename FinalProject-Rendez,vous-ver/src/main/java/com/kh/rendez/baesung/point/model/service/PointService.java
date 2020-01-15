package com.kh.rendez.baesung.point.model.service;

public interface PointService {

	int selectPoint(int user_no);

	int insertCoupon(int user_no);

	int insertPoint(int user_no, int parseInt);

	String checkrepetition(int user_no);

	String checkCoupon(int user_no);

}
