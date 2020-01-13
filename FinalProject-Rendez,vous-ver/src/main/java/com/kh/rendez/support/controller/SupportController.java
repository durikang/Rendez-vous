package com.kh.rendez.support.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.support.common.Pagination;
import com.kh.rendez.support.exception.SupportException;
import com.kh.rendez.support.model.service.SupportService;
import com.kh.rendez.support.model.vo.Answer;
import com.kh.rendez.support.model.vo.Qna;

@Controller
public class SupportController {
	@Autowired
	private SupportService sService;	
	
	private Logger logger = LoggerFactory.getLogger(SupportController.class);
	
	@RequestMapping("support_main.do")
	   public String supportMainView() {
	      return "Support/support_main";
	   }
	
	@RequestMapping("support_qna.do")
	public ModelAndView qnaList(ModelAndView mv, @RequestParam(value="page", required=false) Integer page) {
		int currentPage = page != null ? page : 1;
		
		ArrayList<Qna> list = sService.selectList(currentPage);
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("Support/support_qna");
		}else {
			throw new SupportException("게시글 전체 조회 실패!");
		}
		
		return mv;
	}
	
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
	}
	
	@RequestMapping("qnaDetail.do")
	public ModelAndView qnaDetail(ModelAndView mv, int qNo,
								  @RequestParam("page") Integer page,
								  HttpServletRequest request, HttpServletResponse response) {
		
		int currentPage = page != null ? page : 1;
		
		Qna q = sService.selectQna(qNo);
			
		if(q != null) {
			mv.addObject("q", q);
			mv.addObject("currentPage", currentPage);
			mv.setViewName("Support/detail_qna");
		}else {
			throw new SupportException("게시글 상세보기 전체 조회 실패!");
		}		
		
		return mv;
	}
	
	@RequestMapping("myQnaDetail.do")
	public ModelAndView myQnaDetail(ModelAndView mv, int qNo,
				  @RequestParam("page") Integer page,
				  HttpServletRequest request, HttpServletResponse response) {
	
		int currentPage = page != null ? page : 1;
		
		Qna q = sService.selectQna(qNo);
		
		if(q != null) {
		mv.addObject("q", q);
		mv.addObject("currentPage", currentPage);
		mv.setViewName("Support/mydetail_qna");
		}else {
		throw new SupportException("게시글 상세보기 전체 조회 실패!");
		}		
		
		return mv;
	}
	
	@RequestMapping("insert_qna.do")
	public String insertQnsView() {
		return "Support/insert_qna";
	}
	
	@RequestMapping("qinsert.do")
	public String insertQna(HttpServletRequest request, Qna q) {		
		int result = 0;
		if(!q.getqContent().isEmpty() && !q.getqTitle().isEmpty()) {
			result = sService.insertQna(q);
		}
		
		if(result > 0) {	
			return "redirect:support_qna.do";
		} else {
			throw new SupportException("게시글 등록 실패!");
		}
		
	}	
	
	
	@RequestMapping("support_search.do")
	public ModelAndView searchList(ModelAndView mv, 
									@RequestParam(value="page", required=false) Integer page,
									HttpServletRequest request ) {
		int currentPage = page != null ? page : 1;
		String keyword = request.getParameter("keyword");
		
		ArrayList<Qna> list = sService.selectSearch(currentPage, keyword);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.addObject("keyword", keyword);
			mv.setViewName("Support/support_search");		
		}else {
			throw new SupportException("검색 조회 실패!");
		}		
		return mv;
	}
	
	@RequestMapping("chatbot.do")
	public String chatbotView() {
		return "Support/chatbot";
	}
	
	@RequestMapping("qdelete.do")
	public String deleteQna(int qNo, HttpServletRequest request) {
		int result = sService.deleteQna(qNo);
		
		if(result > 0) {
			return "redirect:support_qna.do";
		} else {
			throw new SupportException("게시글 삭제 실패!");
		}
	}
	
	@RequestMapping("qupView.do")
	public String qnaUploadView(Model model, int qNo, int page, Qna q) {
		System.out.println(q);
		model.addAttribute("q", q);
		model.addAttribute("currentPage", page);
		return "Support/update_qna";
	}
	
	@RequestMapping("qupdate.do")
	public String updateQna(Qna q, int currentPage, HttpServletRequest request) {
		int result = sService.updateQna(q);
		
		if(result > 0) {
			return "redirect:support_qna.do?page="+currentPage;
		} else {
			throw new SupportException("게시글 수정 실패!");
		}
	}
	
	@RequestMapping("addAnswer.do")
	@ResponseBody
	public String addAnswer(Answer a, int refQno, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		a.setaWriter(loginUser.getUser_name());
		
		int result = sService.insertAnswer(a);
		int result1 = sService.updateAnswerStatus(refQno);
		if(result > 0 && result1 > 0) {
			return "success";
		} else {
			throw new SupportException("댓글 등록 실패!");
		}
	}
	
	@RequestMapping(value="aList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String getReplyList(int qNo, HttpServletResponse response) {
		ArrayList<Answer> aList = sService.selectAnswerList(qNo);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		return gson.toJson(aList);
	}
	
}
