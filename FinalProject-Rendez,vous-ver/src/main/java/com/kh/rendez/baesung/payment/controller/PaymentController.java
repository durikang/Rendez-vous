package com.kh.rendez.baesung.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.baesung.payment.model.service.PaymentService;
import com.kh.rendez.baesung.payment.model.vo.LessonTime;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.baesung.search.model.vo.tClass;

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
		
		mv.addObject("phone", "01011111111");
		mv.setViewName("baesung/payment/apply");
			
		return mv;
	}
	
	@RequestMapping("payment.do")
	public ModelAndView paymentClass(ModelAndView mv) {
		
		mv.setViewName("baesung/payment/Payment");
		return mv;
	}
	
	@RequestMapping("coupon.do")
	public ModelAndView coupon(ModelAndView mv) {
		
		mv.setViewName("baesung/payment/coupon");
		return mv;
	}
	
	@RequestMapping("payComplete.do")
	public ModelAndView payComplete(ModelAndView mv,HttpServletRequest request,Payment pm, String payMethod) {
		
		HttpSession session = request.getSession();
		tClass tClass = (com.kh.rendez.baesung.search.model.vo.tClass) session.getAttribute("tClass");
		
		int pCost = tClass.getPrice();
		String pType = payMethod;
		int uNo = 1;
		int lInning = Integer.parseInt((String) session.getAttribute("lInning"));
		int lNo = Integer.parseInt((String) session.getAttribute("lNo"));
				
		pm = new Payment(pCost,pType,uNo,lInning,lNo);
		
		//System.out.println(pm);
		
		int result1 = jpService.insertPayment(pm);
		int result2 = jpService.updateLession(lNo,lInning);
		
		System.out.println("result1 : " + result1 + ", result2" + result2);
		
		mv.setViewName("baesung/payment/Complement");
		
		return mv;
	}
	
	
	
	
	
}
