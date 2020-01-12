package com.kh.rendez.manager.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.rendez.manager.common.Pagination;
import com.kh.rendez.manager.model.exception.ManagerException;
import com.kh.rendez.manager.model.service.ManagerService;
import com.kh.rendez.manager.model.vo.AdminLesson;
import com.kh.rendez.manager.model.vo.AdminMember;
import com.kh.rendez.manager.model.vo.AdminStatic;
import com.kh.rendez.manager.model.vo.Coupon;
import com.kh.rendez.manager.model.vo.MemberJoinTutor;
import com.kh.rendez.manager.model.vo.MemberJoinUserpropic;
import com.kh.rendez.manager.model.vo.Search;
import com.kh.rendez.support.model.vo.Qna;


@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService mnService;
	@Autowired
	JavaMailSender mailSender;
	
	@RequestMapping("managerHome.do")
	public ModelAndView ManagerHome(HttpServletRequest request,ModelAndView mv) {

		mv.setViewName("manager/AdminHome");
		if(request.getSession().getAttribute("loginUser") ==null) {
			mv.addObject("msg","회원 전용입니다. 로그인 해주세요");
			mv.setViewName("redirect:home.do");
		}
		return mv;
		
	}
//	홈페이지 관리
	@RequestMapping("manageHo.do")
	public ModelAndView HomeManageMent(ModelAndView mv,
			@RequestParam(value="page", required=false) Integer page ) {
		
		int currentPage = page !=null ? page : 1;
		
		int qnaCount=mnService.selectQnaResponseCount(5);
		int allQnaCount = mnService.selectQnaResponseCount(4);
		List<Integer> qnaCountlist = new ArrayList<>();
		
		qnaCountlist.add(qnaCount);
		qnaCountlist.add(allQnaCount);
		
		ArrayList<Qna> qnaList=mnService.selectQna(currentPage);
		
		mv.addObject("qnaCountlist",qnaCountlist);
		mv.addObject("qnaList",qnaList);
		mv.addObject("pi",Pagination.getPageInfo());
		mv.setViewName("manager/boarder/homeManagement");
		
		return mv;
	}
		
	@RequestMapping("mn.do")
	public ModelAndView memberList(ModelAndView mv,
				@RequestParam(value="page", required=false) Integer page) {
		// 페이징 처리를 위해 마이바티스 프로젝트에서 PageInfo, Pagination 복사
		int currentPage = page != null ? page : 1;
		
		
		
		ArrayList<MemberJoinUserpropic> list = mnService.selectList(currentPage);	
		
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("manager/boarder/memberBoarderForm");
		}else {
			throw new ManagerException("게시글 전체 조회 실패!");
		}
		
		return mv;
	}
	
//	검색 영역 
	@RequestMapping("mnsearch.do")
	public ModelAndView memberSearch(Search search, ModelAndView mv,
			@RequestParam(value="page",required=false) Integer page) {
		//System.out.println(search.getSearchCondition());
		int currentPage = page != null ? page : 1;
		
		if(search.getSearchValue().equals("일반회원")) {
			search.setSearchValue("n");
		}else if(search.getSearchValue().equals("튜터")) {
			search.setSearchValue("t");
		}
		
		
		ArrayList<MemberJoinUserpropic> searchList = mnService.searchMemberList(search,currentPage);
		
		/*System.out.println("searchList : "+searchList);
		System.out.println("pi : "+Pagination.getPageInfo());
		System.out.println("search : "+search);*/
		
		if(searchList !=null) {
			mv.addObject("list", searchList).
			addObject("pi", Pagination.getPageInfo()).
			addObject("search", search).setViewName("manager/boarder/memberBoarderForm");
		}else {
			mv.addObject("msg","찾고자하는 검색어가 잘못 되었습니다. 다시 시도해 주세요.");
		}
		
		return mv;
	}
	@RequestMapping("supSearch.do")
	public ModelAndView supportSearch(Search search, ModelAndView mv,
			@RequestParam(value="page",required=false) Integer page) {
		int currentPage = page != null ? page : 1;
		

		System.out.println(search);
		ArrayList<Qna> searchList = mnService.searchQnaList(search,currentPage);
		int qnaCount=mnService.selectQnaResponseCount(5);
		int allQnaCount = mnService.selectQnaResponseCount(4);
		List<Integer> qnaCountlist = new ArrayList<>();
		
		qnaCountlist.add(qnaCount);
		qnaCountlist.add(allQnaCount);
		
		if(searchList !=null) {
			mv.addObject("qnaList", searchList).
			addObject("qnaCountlist",qnaCountlist).
			addObject("pi", Pagination.getPageInfo()).
			addObject("search", search).setViewName("manager/boarder/homeManagement");
		}else {
			mv.addObject("msg","찾고자하는 검색어가 잘못 되었습니다. 다시 시도해 주세요.");
		}
		
		return mv;
	}
	
	
//	Gmail 용도 
	@RequestMapping("couSend.do")
	public ModelAndView couponSend(ModelAndView mv,Coupon coupon,
			@RequestParam(value="uId")String uId) {
		//쿠폰 코드 생성
		String code=new RandomCode().rancode().toString();
		String msg;
		coupon.setcCode(code);
		
		if(MailSend(uId,code)) {
			
			msg=mnService.insertCoupon(coupon) != 0 ? "성공적으로 쿠폰 생성 및 이메일을 보냈습니다! " : "쿠폰 생성에 실패 하였습니다.";
			mv.addObject("msg", msg);
			mv.setViewName("redirect:mn.do");
		}else {
			msg="메일 보내기에 실패 하였습니다.";
		}
		
		return mv;
	}
	
	public boolean MailSend(String uId,String code) {
		boolean success=false;
		String setfrom ="kooda21@naver.com";
		String toMail=uId;
		String title="쿠폰 코드 보내드립니다.";
        String content =
                
        System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
        
        System.getProperty("line.separator")+
                
        "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+

        " 쿠폰번호는 [ " +code+ " ] 입니다. "
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+
        
        "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다.";
        
        try {
        	MimeMessage message = mailSender.createMimeMessage();
        	MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true,"UTF-8");
        	
        	 messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
             messageHelper.setTo(toMail); // 받는사람 이메일
             messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
             messageHelper.setText(content); // 메일 내용
             
             mailSender.send(message);
        	success=true;
             
		} catch (MessagingException e) {
			e.printStackTrace();
		}
        return success;
	}
//	
	@RequestMapping("mnRequest.do")
	public ModelAndView RequestTutorView(ModelAndView mv,@RequestParam(value="page",required=false) Integer page) {
		// 페이징 처리를 위해 마이바티스 프로젝트에서 PageInfo, Pagination 복사
		int currentPage = page != null ? page : 1;
		
		
		
		ArrayList<MemberJoinTutor> list = mnService.selectTutorList(currentPage);	
		
		/*System.out.println(list);*/
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("manager/boarder/RequestTutorForm");
		}else {
			throw new ManagerException("게시글 전체 조회 실패!");
		}
		
		return mv;
	}
	@RequestMapping(value="newMemList.do", produces="appllication/json; charset=utf-8")
	@ResponseBody
	public String realTimeMemberList(HttpServletResponse response) throws JsonIOException, IOException{
		ArrayList<AdminMember> mlist =mnService.selectMemberList();
	
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(mlist);
			
	}
	
	@RequestMapping(value="realTimeCount.do", produces="appllication/json; charset=utf-8")
	@ResponseBody
	public String realTimeMemberCount(HttpServletResponse response) throws JsonIOException, IOException{
		AdminStatic as = new AdminStatic();
		
		as.setTodayMember(mnService.countMember(1));
		as.setThisMonthMember(mnService.countMember(2));
		
		as.setTodayPay(mnService.sumPay(1));
		as.setThisMonthPay(mnService.sumPay(2));
		
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(as);
	}
	
	// 실시간 수업 순위
	@RequestMapping(value="realTimeLessonList.do", produces="appllication/json; charset=utf-8")
	@ResponseBody
	public String realTimeLessonList(HttpServletResponse response) throws JsonIOException, IOException{
		ArrayList<AdminLesson> Lessonlist =  mnService.selectRealTimeLessonList();
		
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(Lessonlist);
		
	}
	@RequestMapping("changeTutor.do")
	public ModelAndView changeTutor(ModelAndView mv,@RequestParam("cStr") String cStr,@RequestParam("uNo") List<Integer> uNo,
			@RequestParam("page") Integer page){
		
		HashMap<String, Object> map= new HashMap<>();
		
		map.put("cStr", cStr);
		map.put("uNo", uNo);
		
		String msg = mnService.changeTutorStatus(map) !=0 ? "성공적으로 변경 하였습니다.":"실패 하였습니다.";	
		mv.addObject("msg",msg);
		mv.addObject("page",page);
		mv.setViewName("redirect:mnRequest.do");
		
		return mv;
	}
	
	@RequestMapping("rearrangement.do")
	public ModelAndView rearrangement(ModelAndView mv,@RequestParam("type") String type, @RequestParam("page") Integer page) {
		
		int currentPage = page !=null ? page : 1;
		int qnaCount=mnService.selectQnaResponseCount(5);
		int allQnaCount = mnService.selectQnaResponseCount(4);
		List<Integer> qnaCountlist = new ArrayList<>();
		
		qnaCountlist.add(qnaCount);
		qnaCountlist.add(allQnaCount);
		ArrayList<Qna> qnaList=new ArrayList<>();
		if(type.equals("allQna")) {
			qnaList = mnService.selectQna(currentPage);	
		}
		
		if(type.equals("noQna")) {
			
			qnaList = mnService.selectQna(5,currentPage);	
		}
		
		
		mv.addObject("qnaCountlist",qnaCountlist);
		mv.addObject("qnaList",qnaList);
		
		mv.addObject("pi",Pagination.getPageInfo());
		mv.setViewName("manager/boarder/homeManagement");
		
		
		
		return mv;
	}
	

	
	
	
	
}
