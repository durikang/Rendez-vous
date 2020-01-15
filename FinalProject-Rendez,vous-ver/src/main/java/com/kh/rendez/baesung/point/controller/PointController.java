package com.kh.rendez.baesung.point.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.baesung.payment.model.service.PaymentService;
import com.kh.rendez.baesung.payment.model.vo.Coupon;
import com.kh.rendez.baesung.point.model.service.PointService;
import com.kh.rendez.member.model.vo.Member;

@Controller
public class PointController {

	@Autowired
	PointService pointService;
	
	@Autowired
	PaymentService jpService;
	
	@RequestMapping("pointView.do")
	public ModelAndView pointView(ModelAndView mv, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Member m = (Member) session.getAttribute("loginUser");
		int point = pointService.selectPoint(m.getUser_no());
		String checkPoint = pointService.checkrepetition(m.getUser_no());
		String checkCoupon = pointService.checkCoupon(m.getUser_no());
		ArrayList<Coupon> CouponList = jpService.selectCouponList(m.getUser_no());
		System.out.println(checkPoint);

		if(checkPoint.equals("roulette") || checkCoupon.equals("룰렛20%쿠폰")) {
			mv.addObject("repetition", true);
		}else {
			mv.addObject("repetition",false);
		}
		
		mv.addObject("CouponList", CouponList);
		mv.addObject("point", point);
		mv.setViewName("baesung/point/Point");
		return mv;
	}
	
	@RequestMapping("inserPointOrCoupon.do")
	public String inserPointOrCoupon(ModelAndView mv, HttpServletRequest request, String value) {
		
		HttpSession session = request.getSession();
		Member m = (Member) session.getAttribute("loginUser");
		//System.out.println(value);
		
		if(value.equals("coupon")) {
		int result = pointService.insertCoupon(m.getUser_no());
		//System.out.println("쿠폰 결과 : "  + result);
		session.setAttribute("msg", "쿠폰이 성공적으로 등록되었습니다");
			
		}else {
		int result = pointService.insertPoint(m.getUser_no(),Integer.parseInt(value));	
		//System.out.println("포인트 : "  + result);
		session.setAttribute("msg", "포인트가 성공적으로 적립되었습니다.");
		}
		
		
		return "redirect:pointView.do";
	}
	
}
