package com.kh.rendez.baesung.payment.model.service;

import java.util.ArrayList;

import com.kh.rendez.baesung.payment.model.vo.Coupon;
import com.kh.rendez.baesung.payment.model.vo.InsertCouponInfo;
import com.kh.rendez.baesung.payment.model.vo.LessonTime;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.baesung.search.model.vo.tClass;

public interface PaymentService {

	ArrayList<LessonTime> selectLessonTime(int lNo);

	ArrayList<tClass> selectClassOne(int lNo);

	int insertPayment(Payment pm);

	int updateLession(int lNo, int lInning);

	ArrayList<Coupon> selectCouponList(int i);


	int insertCoupon(InsertCouponInfo insertCouponInfo);

	int updateCoupon(int couponNo);

}
