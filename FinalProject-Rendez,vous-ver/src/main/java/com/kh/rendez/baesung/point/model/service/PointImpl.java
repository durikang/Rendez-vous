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

}
