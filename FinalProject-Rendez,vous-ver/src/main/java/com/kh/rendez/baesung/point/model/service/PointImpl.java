package com.kh.rendez.baesung.point.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.baesung.point.model.dao.PointDao;

@Service("pointService")
public class PointImpl implements PointService{

	@Autowired
	PointDao pointDao;
	
	@Override
	public int selectPoint(int uNo) {
		int result = pointDao.checkUser_Point(uNo);
		
		if(result == 0) {
			pointDao.insertNewPoint(uNo);
		}	
		return pointDao.selectPoint(uNo);
	}

	@Override
	public int insertCoupon(int uNo) {
		return pointDao.insertCoupon(uNo);
	}

	@Override
	public int insertPoint(int uNo, int point) {
		return pointDao.insertNewPoint(uNo,point);
	}

	@Override
	public String checkrepetition(int uNo) {

		String result = pointDao.checkrepetition(uNo);
		
		if(result == null) {
			return "";
		}
						
		return result;
	}

	@Override
	public String checkCoupon(int uNo) {
		
		String result = pointDao.checkCoupon(uNo);
		
		if(result == null) {
			return "";
		}
		return result;
	}

}
