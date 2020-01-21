package com.kh.rendez;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.home.model.service.HomeService;
import com.kh.rendez.home.model.vo.HomeList;
import com.kh.rendez.lesson.model.service.LessonService;
import com.kh.rendez.lesson.model.vo.Lesson;
import com.kh.rendez.lesson.model.vo.LessonInfo;
import com.kh.rendez.member.model.vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private HomeService hService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, ModelAndView mv,@RequestParam(value="msg",required=false) String msg, HttpSession session) {
		
		/*Member loginUser = (Member)session.getAttribute("loginUser");
		int uno = loginUser.getUser_no();*/
		
		ArrayList<HomeList> list = hService.selectList();

		if(list != null) {
			mv.addObject("msg",msg);
			mv.addObject("list", list);
			return mv;			
		} else {
			mv.addObject("msg","게시물 불러오기 실패!");
			mv.setViewName("common/errorPage");
			return mv;
		}
		
	}
}
