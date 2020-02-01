package com.kh.rendez.manager.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.rendez.manager.common.Gmail;
import com.kh.rendez.manager.common.Pagination;
import com.kh.rendez.manager.common.RandomCode;
import com.kh.rendez.manager.model.exception.ManagerException;
import com.kh.rendez.manager.model.service.ManagerService;
import com.kh.rendez.manager.model.vo.AdminLesson;
import com.kh.rendez.manager.model.vo.AdminMember;
import com.kh.rendez.manager.model.vo.AdminMonthsStatic;
import com.kh.rendez.manager.model.vo.AdminStatic;
import com.kh.rendez.manager.model.vo.Coupon;
import com.kh.rendez.manager.model.vo.MemberJoinTutor;
import com.kh.rendez.manager.model.vo.Search;
import com.kh.rendez.support.model.vo.Qna;

@Controller
public class ManagerController {

	@Autowired
	private ManagerService mnService;
	
	@Autowired
	private Gmail mail;

	@RequestMapping("adminHome.do")
	public ModelAndView ManagerHome(HttpServletRequest request,@RequestParam(value="year1",required=false) String year1,
			@RequestParam(value="year2",required=false) String year2,
			@RequestParam(value = "pageName", required = false) String pageName, ModelAndView mv) {

		ArrayList<String> YearList = mnService.selectYearList();
		ArrayList<String> YearList2 = mnService.selectYearList2();
		
		
		
//		현재 날자
		Calendar calendar = new GregorianCalendar(Locale.KOREA);
		int nYear;
		nYear = calendar.get(Calendar.YEAR);
		
		
		if(year1 == null) {
		    year1 = nYear+"";
		}
		if(year2 == null) {
			year2 = nYear+"";
		}
		
		
		if(YearList2.isEmpty()) {
			YearList2.add(Integer.toString(nYear));
		}
		
		
		AdminMonthsStatic monthsJoinMember = mnService.selectmemberList(year1);
		AdminMonthsStatic monthlyIncome = mnService.selectmonthlyIncome(year2);
		
		
		
		mv.addObject("monthsJoinMember",monthsJoinMember);
		mv.addObject("monthlyIncome",monthlyIncome);
		mv.addObject("YearList",YearList);
		mv.addObject("YearList2",YearList2);
		mv.addObject("pageName", pageName);
		mv.setViewName("manager/AdminHome");

		if (request.getSession().getAttribute("loginUser") == null) {
			mv.addObject("msg", "회원 전용입니다. 로그인 해주세요");
			mv.setViewName("redirect:home.do");
		}

		return mv;

	}

//	홈페이지 관리
	@RequestMapping("manageHo.do")
	public ModelAndView HomeManageMent(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpServletRequest request) {

		String pageName = request.getParameter("pageName");

		int currentPage = page != null ? page : 1;

		int qnaCount = mnService.selectQnaResponseCount(5);
		int allQnaCount = mnService.selectQnaResponseCount(4);
		List<Integer> qnaCountlist = new ArrayList<>();

		qnaCountlist.add(qnaCount);
		qnaCountlist.add(allQnaCount);

		ArrayList<Qna> qnaList = mnService.selectQna(currentPage);

		mv.addObject("qnaCountlist", qnaCountlist);
		mv.addObject("qnaList", qnaList);
		mv.addObject("pi", Pagination.getPageInfo());
		mv.addObject("pageName", pageName);
		mv.setViewName("manager/boarder/homeManagement");

		return mv;
	}

	@RequestMapping("mn.do")
	public ModelAndView memberList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpServletRequest request,@RequestParam(value="msg", required=false)String msg) {
		
		int currentPage = page != null ? page : 1;

		String pageName = request.getParameter("pageName");

		ArrayList<AdminMember> list = mnService.selectList(currentPage);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("msg",msg);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.addObject("pageName", pageName);

			mv.setViewName("manager/boarder/memberBoarderForm");

		} else {
			throw new ManagerException("게시글 전체 조회 실패!");
		}

		return mv;
	}
	@RequestMapping("mnSort.do")
	public ModelAndView memberSortList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			@RequestParam("Condition") String Condition,
			@RequestParam(value="param1",required=false) String param1,
			@RequestParam(value="param2",required=false) String param2,
			HttpServletRequest request) {
		String pageName = request.getParameter("pageName");
		
		int currentPage = page != null ? page : 1;
		
		ArrayList<AdminMember> list =null;
		Map<String,Object> param=null;
		ArrayList<String> obj=null;
		if(Condition.equals("1")) {
			obj= new ArrayList<>();
			String startDate = param1;
			String endDate = param2;
			obj.add(startDate);
			obj.add(endDate);
			
			param=new HashMap<>();
			
			param.put("Condition", Condition);
			param.put("Date", obj);
			
			
			list = mnService.sortingSelectMemberList(param,currentPage);
		}else if(Condition.equals("2")) {
			obj=new ArrayList<>();
			String num1=param1;
			String num2=param2;
			obj.add(num1);
			obj.add(num2);
			
			param=new HashMap<>();
			
			param.put("Condition",Condition);
			param.put("Age", obj); 
			
		
			list = mnService.sortingSelectMemberList(param,currentPage);	
		}else if(Condition.equals("3")) {
			obj=new ArrayList<>();
			String gender=param1;
			obj.add(gender);
			
			param=new HashMap<>();
			
			param.put("Condition",Condition);
			param.put("Gender", obj); // M : 남자  F : 여자
			
			
			list = mnService.sortingSelectMemberList(param,currentPage);
			
		}else if(Condition.equals("4")) {
			obj=new ArrayList<>();
			String type=param1;
			obj.add(type);
			
			param=new HashMap<>();
			
			param.put("Condition",Condition);
			param.put("Type", obj); // 타입 (N : 일반회원, T : 튜터회원)
			
			
			list = mnService.sortingSelectMemberList(param,currentPage);
			
		}

		if (list != null) {
			
			
			mv.addObject("list", list);
			mv.addObject("Condition",Condition); //페이징 처리 할 시 사용될 데이터
			mv.addObject("param1",param1); //페이징 처리 할 시 사용될 데이터
			mv.addObject("param2",param2); //페이징 처리 할 시 사용될 데이터
			mv.addObject("pageName","memNTut"); //페이징 처리 할 시 사용될 데이터
			mv.addObject("pi", Pagination.getPageInfo());

			mv.setViewName("manager/boarder/memberBoarderForm");

		} else {
			throw new ManagerException("게시글 전체 조회 실패!");
		}
		
		return mv;
	}
	

	@RequestMapping("cuponEnroll.do")
	public ModelAndView cuponEnroll(ModelAndView mv, @RequestParam("uNo") String uNo) {

		mv.addObject("uNo", uNo);
		mv.setViewName("manager/boarder/cuponInputForm");
		return mv;
	}

//	검색 영역 
	@RequestMapping("mnsearch.do")
	public ModelAndView memberSearch(Search search, ModelAndView mv,
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;
		ArrayList<AdminMember> searchList = mnService.searchMemberList(search, currentPage);
		
		if (searchList != null) {
			mv.addObject("list", searchList).addObject("pi", Pagination.getPageInfo()).addObject("search", search).addObject("pageName","memNTut")
					.setViewName("manager/boarder/memberBoarderForm");
		} else {
			mv.addObject("msg", "찾고자하는 검색어가 잘못 되었습니다. 다시 시도해 주세요.");
		}

		return mv;
	}

	@RequestMapping("supSearch.do")
	public ModelAndView supportSearch(Search search, ModelAndView mv, HttpServletRequest request,
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;
		String pageName = request.getParameter("pageName");

		ArrayList<Qna> searchList = mnService.searchQnaList(search, currentPage);
		int qnaCount = mnService.selectQnaResponseCount(5);
		int allQnaCount = mnService.selectQnaResponseCount(4);
		List<Integer> qnaCountlist = new ArrayList<>();

		qnaCountlist.add(qnaCount);
		qnaCountlist.add(allQnaCount);

		if (searchList != null) {
			mv.addObject("qnaList", searchList).addObject("qnaCountlist", qnaCountlist)
					.addObject("pi", Pagination.getPageInfo()).addObject("search", search)
					.addObject("pageName", pageName).setViewName("manager/boarder/homeManagement");
		} else {
			mv.addObject("msg", "찾고자하는 검색어가 잘못 되었습니다. 다시 시도해 주세요.").addObject("pageName", pageName)
					.setViewName("manager/boarder/homeManagement");
		}

		return mv;
	}

//	Gmail 용도 
	@RequestMapping("couSend.do")
	public ModelAndView couponSend(ModelAndView mv, @RequestParam("arrayUno") String arrayUno, Coupon coupon) {

		List<Integer> unolist = new ArrayList<>();

		for (int i = 0; i < arrayUno.split(",").length; i++) {
			unolist.add(Integer.parseInt(arrayUno.split(",")[i]));
		}
		// 멤버 id 리턴해야함.
		ArrayList<AdminMember> mlist = mnService.selectMemberList(unolist);

		ArrayList<Coupon> clist = new ArrayList<>();

		// 쿠폰 코드 생성
		String[] Arraycode = new String[mlist.size()];

		String msg;

//		DB에 등록하기전 vo 저장

		for (int i = 0; i < Arraycode.length; i++) {
			Coupon c = new Coupon();

			String code = new RandomCode().rancode().toString();
			Arraycode[i] = code;

			c.setcName(coupon.getcName());
			c.setcCode(Arraycode[i]);
			c.setDisRate(coupon.getDisRate());
			c.setStartDate(coupon.getStartDate());
			c.setEndDate(coupon.getEndDate());

			clist.add(c);

		}

		if (mail.MailSend(coupon.getcName(),mlist, Arraycode)) {

			msg = mnService.insertCoupon(clist) != 0 ? "성공적으로 쿠폰 등록 성공! " : "쿠폰 등록 실패 하였습니다.";
			mv.addObject("msg", msg);
			mv.setViewName("redirect:mn.do");
		} else {
			msg = "메일 보내기에 실패 하였습니다.";
		}

		return mv;

	}



//	
	@RequestMapping("mnRequest.do")
	public ModelAndView RequestTutorView(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpServletRequest request,@RequestParam(value="msg",required=false) String msg) {
		String pageName = request.getParameter("pageName");

		int currentPage = page != null ? page : 1;

		ArrayList<MemberJoinTutor> RequestTutorlist = mnService.selectTutorList(currentPage, 2);
		
		int currentRequest=RequestTutorlist.size();
		
		
		
		mv.addObject("RequestTutorlist", RequestTutorlist);
		mv.addObject("currentRequest",currentRequest);
		mv.addObject("msg", msg);
		mv.addObject("pi", Pagination.getPageInfo()).addObject("pageName", pageName);
		mv.setViewName("manager/boarder/RequestTutorForm");

		return mv;
	}
	
	@RequestMapping("grantTutor.do")
	public ModelAndView GrantTutorView(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpServletRequest request,@RequestParam(value="msg",required=false) String msg,@RequestParam(value="currentRequest",required=false) Integer currentRequest) {
		String pageName = request.getParameter("pageName");
		
		int currentPage = page != null ? page : 1;
		
		ArrayList<MemberJoinTutor> AllTutorlist = mnService.selectTutorList(currentPage, 1);
		
		
		
		mv.addObject("AllTutorlist", AllTutorlist);
		mv.addObject("currentRequest", currentRequest);
		mv.addObject("msg", msg);
		mv.addObject("pi", Pagination.getPageInfo()).addObject("pageName", pageName);
		mv.setViewName("manager/boarder/RequestTutorForm");
		
		return mv;
	}
	
	

//	실시간 회원 조회하는 ajax 메소드
	@RequestMapping(value = "newMemList.do", produces = "appllication/json; charset=utf-8")
	@ResponseBody
	public String realTimeMemberList(HttpServletResponse response) throws JsonIOException, IOException {
		ArrayList<AdminMember> mlist = mnService.selectMemberList();
		
		
		Gson gson = new GsonBuilder().create();
		

		return gson.toJson(mlist);

	}

//	실시간 통계
	@RequestMapping(value = "realTimeCount.do", produces = "appllication/json; charset=utf-8")
	@ResponseBody
	public String realTimeMemberCount(HttpServletResponse response) throws JsonIOException, IOException {
		AdminStatic as = new AdminStatic();

		as.setTodayMember(mnService.countMember(1));
		as.setThisMonthMember(mnService.countMember(2));

		as.setTodayPay(mnService.sumPay(1));
		as.setThisMonthPay(mnService.sumPay(2));
		
		
		Gson gson = new GsonBuilder().create();

		return gson.toJson(as);
	}

	// 실시간 수업 순위
	@RequestMapping(value = "realTimeLessonList.do", produces = "appllication/json; charset=utf-8")
	@ResponseBody
	public String realTimeLessonList(HttpServletResponse response) throws JsonIOException, IOException {
		ArrayList<AdminLesson> Lessonlist = mnService.selectRealTimeLessonList();

		Gson gson = new GsonBuilder().create();

		return gson.toJson(Lessonlist);

	}

	@RequestMapping("changeTutor.do")
	public ModelAndView changeTutor(ModelAndView mv, @RequestParam("cStr") String cStr,
			@RequestParam(value = "uNo", required = false) List<Integer> uNo, @RequestParam("page") Integer page) {

		if (uNo == null) {
			mv.addObject("msg", "회원을 선택하지 않았습니다 회원을 선택해주세요.");
			mv.setViewName("common/errorPage");
			return mv;
		}

		HashMap<String, Object> map = new HashMap<>();

		map.put("cStr", cStr);
		map.put("uNo", uNo);

		String msg = mnService.changeTutorStatus(map) != 0 ? "성공적으로 변경 하였습니다." : "실패 하였습니다.";
		mv.addObject("msg", msg);
		mv.addObject("page", page);
		mv.addObject("pageName", "request"); // 사이드 바와 점보트론에 현제 페이지가 어딘지 표시하기 위함.
		if(cStr.equals("R"))
			mv.setViewName("redirect:mnRequest.do");
		if(cStr.equals("Y"))
			mv.setViewName("redirect:grantTutor.do");
		
		return mv;
	}
	
	@RequestMapping("tutorSearch.do")
	public ModelAndView tutorSearch(Search search, ModelAndView mv,
			@RequestParam(value = "page", required = false) Integer page) {
		
		int currentPage = page != null ? page : 1;
		
		ArrayList<MemberJoinTutor> AllTutorlist = mnService.searchTutor(search,currentPage);
		
		mv.addObject("AllTutorlist",AllTutorlist);
		mv.addObject("pi", Pagination.getPageInfo()).addObject("pageName", "request").addObject("search",search);
		mv.setViewName("manager/boarder/RequestTutorForm");		
		return mv;
	}
	

//	재 배열
	@RequestMapping("rearrangement.do")
	public ModelAndView rearrangement(ModelAndView mv, @RequestParam("type") String type,
			@RequestParam("page") Integer page) {

		int currentPage = page != null ? page : 1;
		int qnaCount = mnService.selectQnaResponseCount(5);
		int allQnaCount = mnService.selectQnaResponseCount(4);
		List<Integer> qnaCountlist = new ArrayList<>();

		qnaCountlist.add(qnaCount);
		qnaCountlist.add(allQnaCount);
		ArrayList<Qna> qnaList = new ArrayList<>();
		if (type.equals("allQna")) {
			qnaList = mnService.selectQna(currentPage);
		}

		if (type.equals("noQna")) {

			qnaList = mnService.selectQna(5, currentPage);
		}

		mv.addObject("qnaCountlist", qnaCountlist);
		mv.addObject("qnaList", qnaList);

		mv.addObject("pi", Pagination.getPageInfo());
		mv.setViewName("manager/boarder/homeManagement");

		return mv;
	}
	@RequestMapping("vip5.do")
	public ModelAndView top5VIP(ModelAndView mv,
			HttpServletRequest request) {

		String pageName = request.getParameter("pageName");
		String condition ="vip";
		ArrayList<AdminMember> list = mnService.selectTopFiveVip();

		
		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("Condition", condition);
			mv.addObject("pageName", pageName);

			mv.setViewName("manager/boarder/memberBoarderForm2");
		}

		return mv;
	}
	@RequestMapping("newjoin.do")
	public ModelAndView newJoinMember(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpServletRequest request)
	{
		int currentPage = page != null ? page : 1;

		String pageName = request.getParameter("pageName");
		String condition="join";
		
		ArrayList<AdminMember> list = mnService.selectNewJoinList(currentPage);
		
		
		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.addObject("Condition", condition);
			
			mv.addObject("pageName", pageName);

			mv.setViewName("manager/boarder/memberBoarderForm2");
		}
		return mv;
	}
	
	@RequestMapping("monthsJoinMember.do")
	public ModelAndView monthsJoinMember(ModelAndView mv,HttpServletRequest request,
			@RequestParam(value="year1",required=false) String year1) {
		String pageName="adminHome";
		
		mv.addObject("year1",year1);
		mv.addObject("pageName", pageName);
		mv.setViewName("redirect:adminHome.do");
		
		if (request.getSession().getAttribute("loginUser") == null) {
			mv.addObject("msg", "회원 전용입니다. 로그인 해주세요");
			mv.setViewName("redirect:home.do");
		}
		return mv;
	}
	
	@RequestMapping("monthsIncome.do")
	public ModelAndView monthsIncome(ModelAndView mv,HttpServletRequest request,
			@RequestParam(value="year2",required=false) String year2,@RequestParam(value="year1",required=false) String year1) {
		String pageName="adminHome";
		
		mv.addObject("year1",year1);
		mv.addObject("year2",year2);
		mv.addObject("pageName", pageName);
		mv.setViewName("redirect:adminHome.do");
		
		if (request.getSession().getAttribute("loginUser") == null) {
			mv.addObject("msg", "회원 전용입니다. 로그인 해주세요");
			mv.setViewName("redirect:home.do");
		}
		return mv;
	}
	



}
