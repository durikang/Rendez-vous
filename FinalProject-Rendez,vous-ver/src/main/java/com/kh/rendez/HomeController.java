package com.kh.rendez;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.home.model.service.HomeService;
import com.kh.rendez.home.model.vo.HomeList;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private HomeService hService;

	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, ModelAndView mv,@RequestParam(value="msg",required=false) String msg, HttpSession session) {
		
		/*Member loginUser = (Member)session.getAttribute("loginUser");
		int uno = loginUser.getUser_no();*/
		
		ArrayList<HomeList> alist = hService.selectList();
		ArrayList<HomeList> dlist = hService.selectDateList();

		if(alist != null && dlist != null) {
			mv.addObject("msg",msg);
			mv.addObject("alist", alist);
			mv.addObject("dlist", dlist);
			return mv;			
		} else {
			mv.addObject("msg","게시물 불러오기 실패!");
			mv.setViewName("common/errorPage");
			return mv;
		}
		
	}
}
