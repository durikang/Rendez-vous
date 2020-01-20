package com.kh.rendez.baesung.payment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.baesung.payment.model.dao.PaymentDao;
import com.kh.rendez.baesung.payment.model.vo.Coupon;
import com.kh.rendez.baesung.payment.model.vo.InsertCouponInfo;
import com.kh.rendez.baesung.payment.model.vo.LessonTime;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.baesung.search.model.vo.tClass;

@Service("jpService")
public class PaymentImpl implements PaymentService{

	@Autowired
	PaymentDao jpDao;
	
	@Override
	public ArrayList<LessonTime> selectLessonTime(int lNo) {
		return jpDao.selectLessonTime(lNo);
	}

	@Override
	public ArrayList<tClass> selectClassOne(int lNo) {
		return jpDao.selectClassOne(lNo);
	}

	@Override
	public int insertPayment(Payment pm) {
		return jpDao.insertPayment(pm);
	}

	@Override
	public int updateLession(int lNo, int lInning) {
		
		LessonTime lt = new LessonTime(lNo,lInning);
		int CheckRemain = jpDao.CheckRemain(lNo);
		
		if(CheckRemain == 1) {
			int result1 = jpDao.updateLession(lt);
			int result2 = jpDao.updateLessionInfo(lNo);
			
			return result1;
		}
			
		return jpDao.updateLession(lt);
	}

	@Override
	public ArrayList<Coupon> selectCouponList(int userNo) {
		
		return jpDao.selectCouponList(userNo);
	}

	@Override
	public int insertCoupon(InsertCouponInfo cInfo) {
		
		return jpDao.insertCoupon(cInfo);
	}

	@Override
	public int updateCoupon(int couponNo) {
		return jpDao.updateCoupon(couponNo);
	}

	
}
