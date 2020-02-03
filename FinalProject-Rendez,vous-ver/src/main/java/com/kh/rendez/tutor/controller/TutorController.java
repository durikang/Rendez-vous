package com.kh.rendez.tutor.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.lesson.model.service.LessonService;
import com.kh.rendez.manager.common.Pagination;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.tutor.model.service.TutorService;
import com.kh.rendez.tutor.model.vo.Certification;
import com.kh.rendez.tutor.model.vo.Tutor;

@SessionAttributes("loginUser")
@Controller
public class TutorController {
	
	@Autowired
	private TutorService tService;
	
	@Autowired
	private LessonService lService;
	
	
	
	@RequestMapping("tutorMain.do")
	public ModelAndView tutorMainGo(ModelAndView mv,
			HttpServletRequest request) {
		
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		Tutor tutor = tService.selectTutorInfo(loginUser.getUser_no());
		String[] tutorCerArr = tutor.gettCareer().split(","); 
		
		int nowCount = lService.selectNowCount(loginUser.getUser_no());
		int nowSum = lService.selectNowSum (loginUser.getUser_no());
		int totalCount = lService.selectTotalCount(loginUser.getUser_no());
		int totalSum = lService.selectTotalSum(loginUser.getUser_no());

		mv.addObject("tutor",tutor);
		
		mv.addObject("tutorCerArr",tutorCerArr);
		mv.addObject("nowCount",nowCount);
		mv.addObject("nowSum",nowSum);
		mv.addObject("totalCount",totalCount);
		mv.addObject("totalSum",totalSum);

		mv.setViewName("lesson/tutorMainView");
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("tutorInsertPage.do")
	public ModelAndView tuturInsertPage(ModelAndView mv, HttpServletRequest request) {
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		if(loginUser == null || loginUser.getUser_type().equals("T")) {
			mv.addObject("msg","잘못된 접근입니다");
			mv.setViewName("home");
			return mv;
		}
		
		mv.setViewName("tutor/tutorInsert");
		
		return mv;
	}
	
	@RequestMapping("tutorInsert.do")
	public ModelAndView tutorInsert(
		ModelAndView mv,SessionStatus status,
		HttpServletRequest request,
		String tNick,
		String tInfo,
		@RequestParam(name="certName", required=false) List<String> certName,
		@RequestParam(name="certImg", required=false) List<MultipartFile> certImg,
		String tInstagram, String tBlog, String tYoutube
			) {
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int uno = loginUser.getUser_no();
		
		
		Tutor inTutor = new Tutor();
		inTutor.setuNo(uno);
		inTutor.settNick(tNick);
		
		String certStr = "";
		for(String s : certName) {
			if(!s.equals("")) {
			certStr += s+",";
			}
		}
		
		inTutor.settCareer(certStr);
		
		inTutor.settInfo(tInfo);
		inTutor.settSocial(tInstagram+","+tBlog+","+tYoutube);
		
		int result1 = tService.insertTutor(inTutor);
		int result2 =0;
		int result3 =0;
		if(result1>0) {
			for(int i =0;i<certImg.size();i++) {
				
				if(!certName.get(i).equals("") && !certImg.get(i).getOriginalFilename().equals("")) {
				
					
				String cFileName = saveCertImg(certImg.get(i),request,uno,i);	
				Certification inCer = new Certification();
				inCer.setuNo(uno);
				inCer.setcTitle(certName.get(i));
				inCer.setoFile(certImg.get(i).getOriginalFilename());
				inCer.setcFile(cFileName);
	
				result2 = tService.insertCertification(inCer);	
				}
			}	
			
			if(result2>0) {
				result3 = tService.updateMemberType(uno);
			}
			
			if(result3>0) {
				loginUser.setUser_type("T");
				mv.addObject("loginUser",loginUser);
				mv.addObject("msg","튜터 신청이 완료되있습니다  승인 완료 후 수업 등록이 가능합니다.");
				mv.setViewName("home");
			}
		}
	
		return mv;
	}
	
	
	@RequestMapping("tutorCert.do")
	public ModelAndView tutorCert(HttpServletRequest request,ModelAndView mv,
			int uNo,@RequestParam(value="page",required=false) Integer page,
			@RequestParam(value="pageName",required=false) String pageName) {
		int currentPage = page != null ? page : 1;
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		if(loginUser ==null || !loginUser.getUser_type().equals("A")) {
			mv.setViewName("Home");
			return mv;
		}
		
		
		ArrayList<Certification> tCertArr = tService.selectTCert(uNo,currentPage);

		mv.addObject("tCertArr",tCertArr);
		mv.addObject("pageName",pageName);
		mv.addObject("pi",Pagination.getPageInfo());
		mv.setViewName("tutor/tutorCert");
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	public String saveCertImg(MultipartFile file, HttpServletRequest request,int uno,int ino) {
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\tutorCertification";
		
		File folder = new File(savePath); 
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		int dot = file.getOriginalFilename().lastIndexOf(".");
		String ext = file.getOriginalFilename().substring(dot).toLowerCase();
		String reFileName = uno+"_"+ino+ext;
	
		String filePath = folder + "\\" + reFileName;
		
		try {
			file.transferTo(new File(filePath)); // 이 때 파일 저장 된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} 
		
		return reFileName;
	}

	

}
