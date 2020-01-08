package com.kh.rendez.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.member.controller.MemberController;
import com.kh.rendez.member.model.service.MemberService;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.member.model.exception.MemberException;

@SessionAttributes("loginUser")
@Controller
public class MemberController {
	@Autowired
	private MemberService mService;

	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	

	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String memberLogin(Member m, Model model, HttpSession session, HttpServletRequest request) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		m.setUser_id(id);
		m.setUser_pwd(pwd);
		
		Member loginUser = mService.loginMember(m);
		/*System.out.println(loginUser);*/
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return "home";
		} else {
			model.addAttribute("msg", "로그인 실패");
			return "common/errorPage";
		}
	}

	
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {		
		status.setComplete();
		return "home";
	}
	
	@RequestMapping("mypage.do")
	public String myPageView() {
		return "member/myPage";
	}
	
	@RequestMapping("loginPage.do")
	public String loginPageView() {
		return "member/loginPage";
	}
	
	@RequestMapping("myInfo.do")
	public String myInfoView() {
		return "member/myInfo";
	}

	@RequestMapping("join.do")
	public String joinView() {
		return "member/join";
	}
	
	@RequestMapping("dupid.do")
	public ModelAndView idDuplicateCheck(String user_id, ModelAndView mv) {
		
		boolean isUsable = mService.checkIdDup(user_id) == 0 ? true : false;
		
		Map map = new HashMap();
		map.put("isUsable", isUsable);
		mv.addAllObjects(map);
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@RequestMapping("minsert.do")
	public String memberInsert(Member m,
								@RequestParam("post") String post,
								@RequestParam("address1") String address1,
								@RequestParam("address2") String address2,
								Model model) {
		
		m.setAddress(post + "," + address1 + ", " + address2);
		
		int result = mService.InsertMember(m);
		
		if(result > 0) {
			model.addAttribute("msg", "회원가입이 완료 되었습니다.");
			return "home";
		} else {
			throw new MemberException("회원가입 실패");
		}
	}
	
	
}