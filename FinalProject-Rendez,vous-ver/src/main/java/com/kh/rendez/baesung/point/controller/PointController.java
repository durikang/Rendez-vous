package com.kh.rendez.baesung.point.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.baesung.point.model.service.PointService;
import com.kh.rendez.member.model.vo.Member;

@Controller
public class PointController {

	@Autowired
	PointService pointService;
	
	@RequestMapping("pointView.do")
	public ModelAndView pointView(ModelAndView mv, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Member m = (Member) session.getAttribute("loginUser");
		int point = pointService.selectPoint(m.getUser_no());
		
		mv.addObject("point", point);
		mv.setViewName("baesung/point/Point");
		return mv;
	}
	
	
}
