package com.kh.rendez.review.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;



import com.kh.rendez.review.model.service.ReviewService;


@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService rService;

}
