package com.kh.rendez.baesung.payment.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.baesung.payment.model.vo.Coupon;
import com.kh.rendez.baesung.payment.model.vo.InsertCouponInfo;
import com.kh.rendez.baesung.payment.model.vo.LessonTime;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.baesung.search.model.vo.tClass;

@Repository("jpDao")
public class PaymentDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<LessonTime> selectLessonTime(int lNo) {
		return (ArrayList)sqlSession.selectList("paymentMapper.selectLessonTime", lNo);
	}

	public ArrayList<tClass> selectClassOne(int lNo) {
		return (ArrayList) sqlSession.selectList("paymentMapper.classSearch", lNo);
	}

	public int insertPayment(Payment pm) {
		return sqlSession.insert("paymentMapper.insertPayment",pm);
	}

	public int CheckRemain(int lNo) {
		return sqlSession.selectOne("paymentMapper.CheckRemain",lNo);
	}

	public int updateLession(LessonTime lt) {
		return sqlSession.update("paymentMapper.LessonRemainDown",lt);
	}

	public int updateLessionInfo(int lNo) {
		return sqlSession.update("paymentMapper.LessionStatusUpdate", lNo);
	}

	public ArrayList<Coupon> selectCouponList(int userNo) {
		
		return (ArrayList)sqlSession.selectList("paymentMapper.selectCouponList",userNo);
	}


	public int insertCoupon(InsertCouponInfo cInfo) {
		return  sqlSession.insert("paymentMapper.insertCoupon", cInfo);
	}

	public int updateCoupon(int couponNo) {
		return sqlSession.update("paymentMapper.expirationCoupon",couponNo);
	}

	public int updatePoint(int usePoint, int uNo) {
		HashMap map = new HashMap();
		map.put("usePoint", usePoint);
		map.put("uNo", uNo);
		
		return sqlSession.update("paymentMapper.updatePoint",map);
	}

	public int checkCoupon(InsertCouponInfo cInfo) {

		return sqlSession.selectOne("paymentMapper.checkCoupon", cInfo);
	}

	public int checkCoupon2(InsertCouponInfo cInfo) {
		return sqlSession.selectOne("paymentMapper.checkCoupon2", cInfo);
	}


	
}
