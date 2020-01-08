package com.kh.rendez.Wish.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.Wish.model.dao.WishDao;
import com.kh.rendez.Wish.model.vo.Wish;

@Service("wService")
public class WishServiceImpl implements WishService {
	@Autowired
	private WishDao wDao;
	
	@Override
	public int insertWish(Wish w){
		return wDao.insertWish(w);
	}
	
	@Override
	public int updateWish(Wish w){
		return wDao.updateWish(w);
	}
	
	@Override
	public int deleteWish(Wish w){
		return wDao.insertWish(w);
	}
	
	@Override
	public int checkIdDup(String id){
		return wDao.checkIdDup(id);
	}
}
