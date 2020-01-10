package com.kh.rendez.review.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.review.model.dao.ReviewDao;

@Service("rService")
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDao rDao;

}
