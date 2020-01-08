package com.kh.rendez.lesson.controller;

import java.io.File;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.lesson.model.service.LessonService;
import com.kh.rendez.lesson.model.vo.Lesson;
import com.kh.rendez.lesson.model.vo.LessonAttachment;
import com.kh.rendez.lesson.model.vo.LessonInfo;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.tutor.model.service.TutorService;
import com.kh.rendez.tutor.model.vo.Tutor;

@Controller
public class LessonController {
	
	@Autowired
	private LessonService lService;
	
	@Autowired
	private TutorService tService;
	
	@RequestMapping("hynnmenubar.do")
	public String goHynnmenubar() {
		
		return "common/hyunmenubar";
	}
	
	@RequestMapping("test.do")
	public String goTest() {
		
		return "lesson/test";
	}
	
	@RequestMapping("lessonManageOriginal.do")
	public String goMO() {
		
		return "lesson/lessonManageOriginal";
	}
	
	
	@RequestMapping("fileTest.do")
	public String fileTest(@RequestParam(name="pic1", required=false) ArrayList<MultipartFile> file,
			String text1) {
	

		
		
		return "lesson/test";		
	}
	
	//수업 상세 페이지
	@RequestMapping("lessonDetail.do")
	public ModelAndView lessonDetail(ModelAndView mv,@RequestParam int lNo) {
		
		
		LessonInfo li = lService.selectOneLI(lNo);
		ArrayList<LessonAttachment> laList = lService.selectLAofLI(lNo);
		ArrayList<Lesson> lTime = lService.selectTimeofLI(lNo);
		Tutor tutor = tService.selectTutorOfLI(lNo);
		String tName = tService.selectTutorName(lNo);
		
		//튜터 경력 처리
		String[] tutorCerArr = tutor.gettCareer().split(","); 
		ArrayList<String> tutorCer = new ArrayList<>();
		
		for(int i=0;i<tutorCerArr.length;i++) {
			if(!tutorCerArr[i].equals("")) {
				tutorCer.add(tutorCerArr[i]);
			}
		}
		
		//튜터 사진은 나중에하자

			
		mv.addObject("li",li);
		mv.addObject("laList",laList);
		mv.addObject("lTime",lTime);
		mv.addObject("tutor",tutor);
		mv.addObject("tName",tName);
		mv.addObject("tutorCer",tutorCer);
		
		mv.setViewName("lesson/lessonDetailView");
		
		return mv;
	}
	
	// 수업 정보 인서트 하는 페이지로 가기
	@RequestMapping("lessonInsert.do")
	public String lessonInsertPage() {
		
		
		return "lesson/lessonInsertView";
	}
	
	@RequestMapping("lessonInsertOriginal.do")
	public String lessonInsertOriginal() {
		
		
		return "lesson/lessonInsertOriginal";
	}
	// 수업 정보 인서트
	@RequestMapping("linsert.do")
	public ModelAndView lessonInsert(
			ModelAndView mv,
			HttpServletRequest request,
			LessonInfo li,
			@RequestParam(name="covImg", required=false) MultipartFile covImg,
			@RequestParam(name="extImg", required=false) List<MultipartFile> extImg
			) {
		
		/*----------------넘어온 정보를 다듬어 주자----------------*/
		int uno = ((Member)request.getSession().getAttribute("loginUser")).getUser_no();
		li.setuNo(uno);    // 로그인 유저
		li.setlStatus("Y");
		
		//입력한유튜브에서 필요한 유튜브 코드만 DB에 저장하자
		String url = li.getlYtb();
		int separator=0;	
		if(url.contains("=")) {
			separator = url.lastIndexOf("=");
		}else {
			separator =  url.lastIndexOf("/");
		}
		String code  = url.substring(separator+1);
		li.setlYtb(code);
		
		//텍스트의 줄바꿈을 처리
		li.setlIntroduction(li.getlIntroduction().replace("\n", "<br>"));
		li.setlTarget(li.getlTarget().replace("\n", "<br>"));
		
		/*----------------정보 다듬기 끝----------------*/
			
		int result = lService.insertLessonInfo(li);
		
		int lno=0;
		if(result>0) {
			lno = lService.selectLNo(li.getuNo());
			
			if(!covImg.getOriginalFilename().equals("")) {
				String reFileName = saveLessonImg(covImg,request,lno);      //파일을 저장
				if(reFileName != null) {                                    // 파일 저장이 성공이라면 DB에 저장
					LessonAttachment la = new LessonAttachment();
					la.setoName(covImg.getOriginalFilename());
					la.setcName(reFileName);
					la.setLaType(1);
					la.setlNo(lno);
					
					int result2 = lService.insertAttachment(la);
					num++;
				}
			}
			//커버 이미지 등록 끝

			for(MultipartFile m : extImg) {
				
				if(!m.getOriginalFilename().equals("")) {
					String reFileName = saveLessonImg(m,request,lno);
					
					if(reFileName != null) {                                    // 파일 저장이 성공이라면 DB에 저장
						LessonAttachment la = new LessonAttachment();
						la.setoName(m.getOriginalFilename());
						la.setcName(reFileName);
						la.setLaType(2);
						la.setlNo(lno);
						
						int result3 = lService.insertAttachment(la);
						num++;
					}
				}
			}
			num=0;
		}
		
		String msg = "수업 추가에 성공하였습니다";
		
		mv.setViewName("redirect:lessonManage.do?msg="+msg);
		
		return mv;
	}
	
	

	// 수업 관리하는 페이지로 가기
	@RequestMapping("lessonManage.do")
	public ModelAndView lessonManage(ModelAndView mv,@RequestParam(name="lno" ,required=false) String lno,
			@RequestParam(name="msg",required=false) String msg,
			HttpServletRequest request) {
		
		int uno = ((Member)request.getSession().getAttribute("loginUser")).getUser_no();;
		
		ArrayList<LessonInfo> liList = lService.selectLIList(uno);
		ArrayList<LessonAttachment> laList = lService.selectLAList(uno);
		ArrayList<Lesson> lList = lService.selectLList(uno);

		if(lno != null) {
			mv.addObject("slno",Integer.parseInt(lno));
		}
		
		
		if(msg!=null) {
			mv.addObject("msg",msg);
			System.out.println(msg);
		}
		
		mv.addObject("liList",liList);
		mv.addObject("laList",laList);
		mv.addObject("lList",lList);
		mv.setViewName("lesson/lessonManageView");
		
		return mv;
	}
	
	// 수업 시간을 인서트
	@RequestMapping("lessonTimeInsert.do")
	public String lessonTimeInsert(
			String lno,String dday,String stime,String etime,
			String total,String price
			) {
		
		Lesson l = new Lesson();
		
		l.setlNo(Integer.parseInt(lno));
		l.setlDay(Date.valueOf(dday));
		l.setsTime(Timestamp.valueOf(dday+" "+stime+":0.0"));
		l.seteTime(Timestamp.valueOf(dday+" "+etime+":0.0"));
		l.setPrice(Integer.parseInt(price));
		l.setTotal(Integer.parseInt(total));
		
		int result = lService.insertLessonTime(l);
			
		return "redirect:lessonManage.do?lno="+lno;
	}
	
	// 임시의 수업리스트 페이지
	@RequestMapping("lessonAllListView.do")
	public ModelAndView lessonAllListView(ModelAndView mv) {
		
		ArrayList<LessonInfo> li = lService.selectAllLIList();
		
		mv.addObject("li",li);
		mv.setViewName("lesson/lessonListView");
		
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//파일전송 메소드
	int num =0; //파일 번호를 지정하기 위한 전역변수
	public String saveLessonImg(MultipartFile file, HttpServletRequest request,int lno) {
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\lessonImg";
		
		File folder = new File(savePath); 
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		int dot = file.getOriginalFilename().lastIndexOf(".");
		String ext = file.getOriginalFilename().substring(dot).toLowerCase();
		String reFileName = lno+"_"+num+ext;
	
		String filePath = folder + "\\" + reFileName;
		
		try {
			file.transferTo(new File(filePath)); // 이 때 파일 저장 된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} 
		
		return reFileName;
	}
	
	
	
	
	
	
	
	
	

}
