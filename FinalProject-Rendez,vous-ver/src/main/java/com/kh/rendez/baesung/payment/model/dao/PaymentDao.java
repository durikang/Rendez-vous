package com.kh.rendez.baesung.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	
}
