package com.kh.rendez.member.controller;


import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.Wish.model.vo.Wish;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.lesson.model.vo.LessonInfo;
import com.kh.rendez.member.model.exception.MemberException;
import com.kh.rendez.member.model.service.MemberService;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.member.model.vo.PaymentList;
import com.kh.rendez.member.model.vo.ReviewList;
import com.kh.rendez.member.model.vo.Userpropic;
import com.kh.rendez.member.model.vo.WishList;

@SessionAttributes("loginUser")
@Controller
public class MemberController {
	// 암호화 처리 시 작성
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MemberService mService;

	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	   public String memberLogin(Member m, Model model, HttpSession session, HttpServletRequest request) {
	      String id = request.getParameter("id");
	      String pwd = request.getParameter("pwd");
	      
	      m.setUser_id(id);
	      
	      
	      Member loginUser = mService.loginMember(m);
	      
	      
	      if(loginUser != null && bcryptPasswordEncoder.matches(pwd, loginUser.getUser_pwd())) {
	         session.setAttribute("loginUser", loginUser);
	         return "redirect:home.do";
	      } else {
	         model.addAttribute("msg", "로그인 실패");
	         return "member/loginPage";
	      }
	   }
	
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {		
		status.setComplete();
		return "redirect:home.do";
	}
	
	// 회원정보 수정 시 입력하는 비밀번호 확인용
	@RequestMapping("pwdCheck.do")
	public ModelAndView pwdCheck(Member m, ModelAndView mv, HttpServletRequest request) {
		
		Member loginUser = mService.loginMember(m);
		 
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getUser_pwd(), loginUser.getUser_pwd())) {
			mv.addObject("msg3", "비밀번호 일치");
			mv.setViewName("member/myPage");
			return mv;
		}else {
			mv.addObject("msg4", "비밀번호 불일치");
			mv.setViewName("redirect:mypage.do");
			return mv;
		}
	}

	
	   @RequestMapping("mypage.do")
	    public ModelAndView myPageView(ModelAndView mv, HttpSession session,
	    		@RequestParam(value="userPropic",required=false) Userpropic u,
	    		@RequestParam(value="msg2",required=false)String msg2,@RequestParam(value="msg4",required=false)String msg4) {
	 
//	    Member loginUser = (Member)session.getAttribute("loginUser");
		System.out.println("uNo : "+((Member)session.getAttribute("loginUser")).getUser_no());
	    Member m = mService.selectMember(((Member)session.getAttribute("loginUser")).getUser_no());
	    
	    int userNo = m.getUser_no();
	    
	    
	    
	    
	    ArrayList<PaymentList> p = mService.selectListP(userNo);
	    
	    System.out.println(p);
	    ArrayList<Wish> w = mService.selectListWi(userNo);
	    ArrayList<WishList> l = new ArrayList<>();
	    
	    
	    for(int i = 0; i<w.size(); i++) {
	       WishList wl = mService.selectListl(w.get(i).getL_no());
	       l.add(wl);
	    }
	    
	    mv.addObject("plist",p);
	    mv.addObject("list1", l);
	    
	    ArrayList<ReviewList> r = mService.selectList(userNo);
	    if(u == null) {
	    	u = mService.selectOne(m.getUser_no());	
	    }
	    
	    
	    if(msg2 !=null) {
	    	mv.addObject("msg2",msg2);
	    }
	    if(msg4 !=null) {
	    	mv.addObject("msg4",msg4);
	    }
	    
	    mv.addObject("list", r);
	    mv.addObject("userPropic", u);
	    mv.setViewName("member/myPage");
	          
	    return mv;
	 }
	   
	   
	   
	   
	   
	   
	@RequestMapping("uppayment.do")
		public String uppayment(int pmNo,PaymentList p) {
		
		p = mService.selectOnePn(pmNo);
		String p1 = "2";
		String p2 = "3";

	    if(p.getPaymentStatus().equals("1") || p.getPaymentStatus().equals("11")) {
	    	p.setPaymentStatus(p1);
	    }else if(p.getPaymentStatus().equals("13")) {
	    	p.setPaymentStatus(p2);
	    }
	    
	    int result = mService.updatePayment(p);
		
	    if(result > 0) {
	    return "redirect:mypage.do";
	    }else {
	    throw new MemberException("취소실패");
	    }
				
		}
	
	@RequestMapping("ReviewDetail.do")
	public String ReviewDetail(int lNo) {
		System.out.println(lNo);
		return "redirect:lessonDetail.do?lNo=" + lNo;
	}
	
	@RequestMapping("loginPage.do")
	public String loginPageView() {
		return "member/loginPage";
	}
	
	@RequestMapping("pwdCheckPage.do")
		public String pwdCheckPageView() {
			return "member/pwdCheckPage";
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
	
	@RequestMapping(value="minsert.do", method=RequestMethod.POST)
	public String memberInsert(HttpServletRequest request, Member m,
								@RequestParam("user_id") String id,
								@RequestParam("post") String post,
								@RequestParam("address1") String address1,
								@RequestParam("address2") String address2, Model model) {
		



		m.setUser_id(id);
		m.setAddress(post + "," + address1 + ", " + address2);
		String encPwd = bcryptPasswordEncoder.encode(m.getUser_pwd());
		
		m.setUser_pwd(encPwd);
		
		int result = mService.insertMember(m);
		
		
		if(result > 0) {
			model.addAttribute("msg", "회원가입이 완료 되었습니다.");
			return "home";
		} else {
			throw new MemberException("회원가입 실패");
		}
	}
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\user/img";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String uOriginName = file.getOriginalFilename();
		String uChangeName = sdf.format(new java.util.Date()) + "."
		+ uOriginName.substring(uOriginName.lastIndexOf(".") + 1);
		
		String renamePath = folder + "\\" + uChangeName;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		
		return uChangeName;
	}
	
	
	
			// 회원 정보 수정
			@RequestMapping("mupdate.do")
			public String memberUpdate(Member m, Model model,
										HttpSession session,
										Userpropic u,
										@RequestParam("pw") String pw,
										@RequestParam("post") String post,
										@RequestParam("address1") String address1,
										@RequestParam("address2") String address2,
										@RequestParam(value="reloadFile", required=false) MultipartFile file, HttpServletRequest request) {
				
				int uNo=((Member)session.getAttribute("loginUser")).getUser_no();
	            u.setuNo(uNo);
	            
				
				
				
			
				if(!file.getOriginalFilename().equals("")) { 
					String uChangeName = saveFile(file, request);
				if(uChangeName != null) {
							u.setuOriginName(file.getOriginalFilename());
							u.setuChangeName(uChangeName);
					}
				}


				
				m.setAddress(post + ", " + address1 + ", " + address2);
				
				
				
				if(pw.equals("")) {
					Member m2 = (Member)session.getAttribute("loginUser");
					m.setUser_pwd(m2.getUser_pwd());
					
				} else {
				m.setUser_pwd(pw);
				String encPwd = bcryptPasswordEncoder.encode(m.getUser_pwd());
				m.setUser_pwd(encPwd);

				}
				
				
				int result2 =mService.updatePropic(u);
				int result = mService.updateMember(m);
				
				if(result > 0 || result2 > 0) {
					model.addAttribute("msg2", "회원 정보 수정 성공");
					model.addAttribute("userPropic" , u);
				} else {
					throw new MemberException("회원 정보 수정 실패");
				}
				return "redirect:mypage.do";
			}
		
		
		@RequestMapping("mdelete.do")
		public String memberDelete(Member m, Model model,SessionStatus status) {
			
			int result = mService.deleteMember(m);
			
			if(result > 0) {
				model.addAttribute("msg0", "회원탈퇴 성공");
				status.setComplete();
				return "member/myPage";
				
			} else {
				throw new MemberException("회원 탈퇴 실패");
			}

		}
		
}