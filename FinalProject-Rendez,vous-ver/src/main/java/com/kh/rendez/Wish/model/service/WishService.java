package com.kh.rendez.Wish.model.service;

import com.kh.rendez.Wish.model.vo.Wish;

public interface WishService {
	
	// 수업 찜하는 메소드
	public int insertWish(Wish w);
	
	//  수정 메소드
	public int updateWish(Wish w);
	
	// 삭제 메소드
	public int deleteWish(Wish w);
	
	// 중복 체크를 위한 메소드
	public int checkIdDup(String id);
	
	
	
	
}
