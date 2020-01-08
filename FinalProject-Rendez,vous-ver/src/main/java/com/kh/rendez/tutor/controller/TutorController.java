package com.kh.rendez.tutor.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.rendez.lesson.model.service.LessonService;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.tutor.model.service.TutorService;
import com.kh.rendez.tutor.model.vo.Certification;
import com.kh.rendez.tutor.model.vo.Tutor;


@Controller
public class TutorController {
	
	@Autowired
	private TutorService tService;
	
	
	@RequestMapping("tutorInsertPage.do")
	public String tuturInsertPage() {
		
		
		return "tutor/tutorInsert";
	}
	
	@RequestMapping("tutorInsert.do")
	public String tutorInsert(
		HttpServletRequest request,
		@RequestParam(name="tutorPropic", required=false) MultipartFile tutorPropic,
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
		
		if(result1>0) {
			for(int i =0;i<certImg.size();i++) {
				
				if(!certName.get(i).equals("") && !certImg.get(i).getOriginalFilename().equals("")) {
				
					
				String cFileName = saveCertImg(certImg.get(i),request,uno,i);	
				Certification inCer = new Certification();
				inCer.setuNo(uno);
				inCer.setcTitle(certName.get(i));
				inCer.setoFile(certImg.get(i).getOriginalFilename());
				inCer.setcFile(cFileName);
	
				int result2 = tService.insertCertification(inCer);	
				}
				
				
			}	
		}
		
		

		
		return "tutor/tutorInsert";
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
