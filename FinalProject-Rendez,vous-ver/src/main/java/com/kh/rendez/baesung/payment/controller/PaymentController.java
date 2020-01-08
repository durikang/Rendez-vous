package com.kh.rendez.baesung.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.baesung.payment.model.service.PaymentService;
import com.kh.rendez.baesung.payment.model.vo.Coupon;
import com.kh.rendez.baesung.payment.model.vo.InsertCouponInfo;
import com.kh.rendez.baesung.payment.model.vo.LessonTime;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.baesung.search.model.vo.tClass;
import com.kh.rendez.member.model.vo.Member;

@Controller
public class PaymentController {

	@Autowired
	PaymentService jpService;
	
	@RequestMapping("detail.do")
	public ModelAndView detailClass(int lNo, ModelAndView mv, HttpServletRequest request) {
		
		ArrayList<LessonTime> ltList = jpService.selectLessonTime(lNo);
		ArrayList<tClass> sList = jpService.selectClassOne(lNo);
		
		HttpSession session = request.getSession();
		
	
		/*System.out.println(ltList);
		System.out.println(sList);*/
		session.setAttribute("tClass", sList.get(0));
		session.setAttribute("ltList", ltList);
		mv.setViewName("baesung/payment/LocationAndTime");
				
		return mv;
	}
	
	@RequestMapping("apply.do")
	public ModelAndView applyClass(String lInning, String lNo,HttpServletRequest request,
			ModelAndView mv) {
		
		/*System.out.println(lNo);
		System.out.println(lInning);*/
		HttpSession session = request.getSession();
		
		session.setAttribute("lInning", lInning);
		session.setAttribute("lNo", lNo);
		
		
		mv.setViewName("baesung/payment/apply");
			
		return mv;
	}
	
	@RequestMapping("payment.do")
	public ModelAndView paymentClass(ModelAndView mv) {
		
		mv.setViewName("baesung/payment/Payment");
		return mv;
	}
	
	@RequestMapping("coupon.do")
	public ModelAndView coupon(ModelAndView mv,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Member m = (Member) session.getAttribute("loginUser");
		
		ArrayList<Coupon> CouponList = jpService.selectCouponList(m.getUser_no());
		
		System.out.println(CouponList);
		mv.addObject("CouponList", CouponList);
		mv.setViewName("baesung/payment/coupon");
		return mv;
	}
	
	@RequestMapping("insertCoupon.do")
	public ModelAndView insertCoupon(ModelAndView mv, HttpServletRequest request,String code) {
		
		HttpSession session = request.getSession();
		Member m = (Member) session.getAttribute("loginUser");
		
		int result = jpService.insertCoupon(new InsertCouponInfo(code, m.getUser_no()));
		ArrayList<Coupon> CouponList = null;
		if(result > 0) {
			CouponList = new ArrayList<Coupon>();
			 CouponList = jpService.selectCouponList(m.getUser_no());
		}
		
		mv.addObject("CouponList", CouponList);
		mv.setViewName("baesung/payment/coupon");
		
		return mv;
	}
	
	
	@RequestMapping("payComplete.do")
	public ModelAndView payComplete(ModelAndView mv,HttpServletRequest request,Payment pm, String payMethod,
			Integer couponNo) {
		
		HttpSession session = request.getSession();
		tClass tClass = (com.kh.rendez.baesung.search.model.vo.tClass) session.getAttribute("tClass");
		Member m = (Member) session.getAttribute("loginUser");
		
		int pCost = tClass.getPrice();
		String pType = payMethod;
		int uNo = m.getUser_no();
		int lInning = Integer.parseInt((String) session.getAttribute("lInning"));
		int lNo = Integer.parseInt((String) session.getAttribute("lNo"));
				
		pm = new Payment(pCost,pType,uNo,lInning,lNo);
		
		//System.out.println(pm);
		System.out.println("쿠폰번호 넘어오는지 : "  + couponNo);
		if(couponNo != 0) {
			int result3 = jpService.updateCoupon(couponNo);
		}
		
		
		int result1 = jpService.insertPayment(pm);
		int result2 = jpService.updateLession(lNo,lInning);
		
		System.out.println("result1 : " + result1 + ", result2" + result2);
		
		mv.setViewName("baesung/payment/Complement");
		
		return mv;
	}
	
	
	
	
	
}
