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

import com.kh.rendez.member.model.exception.MemberException;
import com.kh.rendez.member.model.service.MemberService;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.member.model.vo.ReviewList;
import com.kh.rendez.member.model.vo.Userpropic;
import com.kh.rendez.support.model.service.SupportService;

@SessionAttributes("loginUser")
@Controller
public class MemberController {
	// 암호화 처리 시 작성
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MemberService mService;
	private SupportService sService;

	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	   public String memberLogin(Member m, Model model, HttpSession session, HttpServletRequest request) {
	      String id = request.getParameter("id");
	      String pwd = request.getParameter("pwd");
	      
	      m.setUser_id(id);
	      
	      
	      Member loginUser = mService.loginMember(m);
	      
	      
	      if(loginUser != null && bcryptPasswordEncoder.matches(pwd, loginUser.getUser_pwd())) {
	         session.setAttribute("loginUser", loginUser);
	         return "home";
	      } else {
	         model.addAttribute("msg", "로그인 실패");
	         return "member/loginPage";
	      }
	   }
	
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {		
		status.setComplete();
		return "home";
	}
	
	// 회원정보 수정 시 입력하는 비밀번호 확인용
	@RequestMapping("pwdCheck.do")
	public String pwdCheck(Member m, Model model, HttpServletRequest request) {
		
		Member loginUser = mService.loginMember(m);
		 
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getUser_pwd(), loginUser.getUser_pwd())) {
			model.addAttribute("msg3", "비밀번호 일치");
			return "member/myPage";
		}else {
			model.addAttribute("msg4", "비밀번호 불일치");
			return "member/myPage";
		}
	}

	
	@RequestMapping("mypage.do")
		public ModelAndView myPageView(ModelAndView mv, HttpSession session,
				  HttpServletRequest request, HttpServletResponse response) {
	
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getUser_no();
		
		ArrayList<ReviewList> r = mService.selectList(userNo);
		
		Userpropic u = mService.selectOne(loginUser.getUser_no());
		
		System.out.println(r);
		mv.addObject("list", r);
		mv.addObject("userPropic", u);
		mv.setViewName("member/myPage");
				
		
		return mv;
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
								@RequestParam("address2") String address2,
								@RequestParam(value="uploadFile", required=false) MultipartFile file, Model model) {
		

		 if(!file.getOriginalFilename().equals("")) {
			   String renameFileName = saveFile(file, request);

			   if(renameFileName != null) {
			    m.setPhoto(file.getOriginalFilename());
			    m.setUpphoto(renameFileName);
			   }
			  }
		 
		
		

		m.setUser_id(id);
		m.setAddress(post + "," + address1 + ", " + address2);
		String encPwd = bcryptPasswordEncoder.encode(m.getUser_pwd());
		
		m.setUser_pwd(encPwd);
		
		int result = mService.insertMember(m);
		
		
		if(result > 0 || m.getPhoto() == null || m.getUpphoto() != null || m.getPhoto() != null || m.getUpphoto() == null ) {
			model.addAttribute("msg", "회원가입이 완료 되었습니다.");
			return "home";
		} else {
			throw new MemberException("회원가입 실패");
		}
	}
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\myPage/img";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmss");
		String photo = file.getOriginalFilename();
		String upphoto = sdf.format(new java.util.Date()) + "." + photo.substring(photo.lastIndexOf(".") + 1);
		
		String renamePath = folder + "\\" + upphoto;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		
		return upphoto;
	}
	
	// 회원 정보 수정
		@RequestMapping("mupdate.do")
		public String memberUpdate(Member m, Model model,
									HttpSession session,
									@RequestParam("pw") String pw,
									@RequestParam("post") String post,
									@RequestParam("address1") String address1,
									@RequestParam("address2") String address2) {
			
			m.setAddress(post + ", " + address1 + ", " + address2);
			
			if(pw.equals("")) {
				Member m2 = (Member)session.getAttribute("loginUser");
				m.setUser_pwd(m2.getUser_pwd());
				
			} else {
			m.setUser_pwd(pw);
			String encPwd = bcryptPasswordEncoder.encode(m.getUser_pwd());
			m.setUser_pwd(encPwd);
			}
			
			int result = mService.updateMember(m);
			
			if(result > 0) {
				model.addAttribute("msg2", "회원 정보 수정 성공");
				model.addAttribute("loginUser", m);
			} else {
				throw new MemberException("회원 정보 수정 실패");
			}
			return "member/myPage";
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
