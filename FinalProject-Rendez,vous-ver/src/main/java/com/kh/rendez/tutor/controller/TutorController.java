package com.kh.rendez.tutor.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.manager.common.Pagination;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.tutor.model.service.TutorService;
import com.kh.rendez.tutor.model.vo.Certification;
import com.kh.rendez.tutor.model.vo.Tutor;


@Controller
public class TutorController {
	
	@Autowired
	private TutorService tService;
	
	
	@RequestMapping("tutorInsertPage.do")
	public ModelAndView tuturInsertPage(ModelAndView mv, HttpServletRequest request) {
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		if(loginUser == null || loginUser.getUser_type().equals("T")) {
			mv.setViewName("home");
			return mv;
		}
		
		mv.setViewName("tutor/tutorInsert");
		
		return mv;
	}
	
	@RequestMapping("tutorInsert.do")
	public ModelAndView tutorInsert(
		ModelAndView mv,
		HttpServletRequest request,
		String tNick,
		String tInfo,
		@RequestParam(name="certName", required=false) List<String> certName,
		@RequestParam(name="certImg", required=false) List<MultipartFile> certImg,
		String tInstagram, String tBlog, String tYoutube
			) {

		int uno = ((Member)request.getSession().getAttribute("loginUser")).getUser_no();
		
		
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
