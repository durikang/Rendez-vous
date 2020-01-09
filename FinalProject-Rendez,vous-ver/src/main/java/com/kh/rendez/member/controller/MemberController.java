package com.kh.rendez.member.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.member.controller.MemberController;
import com.kh.rendez.member.model.service.MemberService;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.support.common.Pagination;
import com.kh.rendez.support.exception.SupportException;
import com.kh.rendez.support.model.service.SupportService;
import com.kh.rendez.support.model.vo.Qna;
import com.kh.rendez.member.model.exception.MemberException;

@SessionAttributes("loginUser")
@Controller
public class MemberController {
	@Autowired
	private MemberService mService;
	private SupportService sService;

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

	/*// 내가 쓴 문의내역 리스트
	@RequestMapping("support_list.do")
	public ModelAndView myQnaList(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, HttpSession session) {
		int currentPage = page != null ? page : 1;
		Member loginUser = (Member)session.getAttribute("loginUser");
		String writer = loginUser.getUser_name();
		ArrayList<Qna> list = sService.selectMyQnaList(currentPage, writer);
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("Support/support_list");
		} else {
			throw new SupportException("문의 내역 조회 실패!");
		}
		
		return mv;
	}*/
	
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {		
		status.setComplete();
		return "home";
	}
	
	@RequestMapping("mypage.do")
	public ModelAndView myPageView(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, HttpSession session) {
		int currentPage = page != null ? page : 1;
		Member loginUser = (Member)session.getAttribute("loginUser");
		String writer = loginUser.getUser_name();
		/*ArrayList<#> list = mService.selectMyReview(currentPage, writer);*/
		ArrayList<Qna> list = mService.selectMyQnaList(currentPage, writer);
		System.out.println(list);
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("member/myPage");
		} else {
			throw new SupportException("문의 내역 조회 실패");
		}
			return mv;
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
	
	@RequestMapping("deletePwCheck.do")
	public String deletePwCheckView() {
		return "member/deletePwCheck";
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
	public String memberInsert(HttpServletRequest request, Member m,
								@RequestParam("post") String post,
								@RequestParam("address1") String address1,
								@RequestParam("address2") String address2, 
								/*@RequestParam(value="uploadFile", required=false) MultipartFile file,*/ Model model) {
		
/*		if(!file.getPhoto).equals("")) {
			String upphoto = saveFile(file, request);
			
			
			
			if(upphoto != null) {
				m.setPhoto(file.getPhoto());
				m.setUpphoto(upphoto);
			}			
		}	*/	
		
		m.setAddress(post + "," + address1 + ", " + address2);
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			model.addAttribute("msg", "회원가입이 완료 되었습니다.");
			return "home";
		} else {
			throw new MemberException("회원가입 실패");
		}
	}
	
	/*public String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("/resources/myPage/uploadImg/");
		
		String savePath = root + "\\uploadImg";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmss");
		String photo = file.getPhoto();
		String upphoto = sdf.format(new java.util.Date()) + "." + photo.substring(photo.lastIndexOf(".") + 1);
		
		String renamePath = folder + "\\" + upphoto;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		
		return upphoto;
	}*/
	
	// 회원 정보 수정
		@RequestMapping("mupdate.do")
		public String memberUpdate(Member m, Model model,
									@RequestParam("post") String post,
									@RequestParam("address1") String address1,
									@RequestParam("address2") String address2) {
			
			m.setAddress(post + ", " + address1 + ", " + address2);
			
			int result = mService.updateMember(m);
			
			if(result > 0) {
				model.addAttribute("msg", "회원 정보 수정이 되었습니다.");
				model.addAttribute("loginUser", m);
			} else {
				throw new MemberException("회원 정보 수정 실패");
			}
			return "home";
		}
		
		@RequestMapping("mdelete.do")
		public String memberDelete(Member m, HttpSession session) {
			
			int result = mService.deleteMember(m);
			
			if(result > 0) {
				session.setAttribute("msg", "회원 탈퇴가 완료되었습니다.");
			} else {
				throw new MemberException("회원 탈퇴 실패");
			}
			
			return "redirect:logout.do";
		}
		
		
		//패스워드 체크
		@RequestMapping(value="passCheck.do", method=RequestMethod.POST, produces = "application/text; charset=utf8")
		@ResponseBody
		public String passCheck(Member member) {
			
			int result = mService.passCheck(member);
			return Integer.toString(result);
		}
		
}