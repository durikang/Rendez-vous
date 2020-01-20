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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.kh.rendez.Wish.model.vo.Wish;
import com.kh.rendez.baesung.payment.model.vo.Payment;
import com.kh.rendez.lesson.model.service.LessonService;
import com.kh.rendez.lesson.model.vo.Lesson;
import com.kh.rendez.lesson.model.vo.LessonAttachment;
import com.kh.rendez.lesson.model.vo.LessonDetailInfo;
import com.kh.rendez.lesson.model.vo.LessonInfo;
import com.kh.rendez.lesson.model.vo.LessonReview;
import com.kh.rendez.member.model.vo.Member;
import com.kh.rendez.review.model.service.ReviewService;
import com.kh.rendez.review.model.vo.Review;
import com.kh.rendez.tutor.model.service.TutorService;
import com.kh.rendez.tutor.model.vo.Tutor;

@Controller
public class LessonController {
	
	@Autowired
	private LessonService lService;
	
	@Autowired
	private TutorService tService;
	
	@Autowired
	private ReviewService rService;
	
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
	public ModelAndView lessonDetail(HttpServletRequest request,ModelAndView mv,int lNo,
			@RequestParam(name="msg", required=false) String msg
			) {
		
		LessonDetailInfo ldi = lService.selectLDI(lNo);
		ArrayList<LessonReview> lRList = lService.selectLessonReviewList(lNo);
		ArrayList<Lesson> lTime = lService.selectTimeofLI(lNo);
	
		//튜터 경력 처리
		String[] tutorCerArr = ldi.getTutor().gettCareer().split(","); 
		ArrayList<String> tutorCer = new ArrayList<>();
		
		for(int i=0;i<tutorCerArr.length;i++) {
			if(!tutorCerArr[i].equals("")) {
				tutorCer.add(tutorCerArr[i]);
			}
		}
		
		//로그인이되있으면
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		if(loginUser!=null) {
			int uNo = loginUser.getUser_no();
			
			// 찜하기 체크를 위한 처리
			Wish checkWish = new Wish();
			checkWish.setL_no(lNo);
			checkWish.setUser_no(uNo);
			int result = lService.checkUserFav(checkWish);	
			if(result>0) {
				mv.addObject("favCheck",result);
			}
			
			/*-----리뷰상태를 위한 처리----*/
			//결제(이용완료인 상태)를 몇번 했는지 체크
			Payment pay = new Payment();
			pay.setlNo(lNo);
			pay.setuNo(uNo);
			int payCheck = lService.checkUserPay(pay);
			
			//해당 수업에 리뷰를 남겼는데 체크
			Review checkReview = new Review();
			checkReview.setlNo(lNo);
			checkReview.setuNo(uNo);
			int reviewCheck = lService.checkUserReview(checkReview);
			String uRStatus = "";
			if(payCheck==0) {
				uRStatus="unable";
			}
			if(payCheck>0 && reviewCheck==0) {
				uRStatus="able";
			}		
			if(payCheck>0 && reviewCheck>0) {
				uRStatus="reviewed";
				Review selecter = new Review();
				selecter.setlNo(lNo);
				selecter.setuNo(uNo);
				Review userReview = lService.selectUReview(selecter);
				userReview.setrContent(userReview.getrContent().replace("<br>", "\n"));
				mv.addObject("userReview",userReview);
			}			
			System.out.println(uRStatus);
			mv.addObject("uRStatus",uRStatus);
		}
		
		int sum=0;
		for(LessonReview lr : lRList) {
			sum+=lr.getrRating();
		}
		double lessonAvg = (double)sum/lRList.size();
		
		//리뷰 인서트를 성공한후 다시 가는 처리
		if(msg !=null) {
			mv.addObject("msg",msg);
		}
				

		mv.addObject("ldi",ldi);
		mv.addObject("tutorCer",tutorCer);
		mv.addObject("lessonAvg",lessonAvg);
		mv.addObject("lRList",lRList);
		mv.addObject("lTime",lTime);
		
		
		mv.setViewName("lesson/lessonDetailView");
		
		return mv;
	}
	
	// 수업 정보 인서트 하는 페이지로 가기
	@RequestMapping("lessonInsert.do")
	public ModelAndView lessonInsertPage(HttpServletRequest request,ModelAndView mv) {
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		if(loginUser == null || !loginUser.getUser_type().equals("T")) {
			mv.addObject("msg","잘못된 접근입니다");
			mv.setViewName("home");
			return mv;
		}
		
		String tStatus = tService.selectTutorStatus(loginUser.getUser_no());
		
		if(!tStatus.equals("Y")) {
			mv.addObject("msg","승인이 완료되지 않았거나  수업을 등록할 수 없는 상태입니다!.");
			mv.setViewName("home");
			return mv;
		}
		
			
		mv.setViewName("lesson/lessonInsertView");
		
		return mv;
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
			RedirectAttributes rd,
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
				String reFileName = saveLessonImg(covImg,request,lno,1);      //파일을 저장
				if(reFileName != null) {                                    // 파일 저장이 성공이라면 DB에 저장
					LessonAttachment la = new LessonAttachment();
					la.setoName(covImg.getOriginalFilename());
					la.setcName(reFileName);
					la.setLaType(1);
					la.setlNo(lno);
					
					int result2 = lService.insertAttachment(la);
				}
			}
			//커버 이미지 등록 끝
			int lNum = 2;
			for(int i=0;i<extImg.size();i++) {
				
				
				if(!extImg.get(i).getOriginalFilename().equals("")) {
					
					String reFileName = saveLessonImg(extImg.get(i),request,lno,lNum);
					
					if(reFileName != null) {                                    // 파일 저장이 성공이라면 DB에 저장
						LessonAttachment la = new LessonAttachment();
						la.setoName(extImg.get(i).getOriginalFilename());
						la.setcName(reFileName);
						la.setLaType(lNum++);
						la.setlNo(lno);
						
						int result3 = lService.insertAttachment(la);
					}
				}
			}
			lNum=0;
		
		}
		

		rd.addFlashAttribute("msg","수업을 정상적으로 등록하였습니다");
		mv.setViewName("redirect:lessonManage.do");
		
		return mv;
	}
	
	

	// 수업 관리하는 페이지로 가기
	@RequestMapping("lessonManage.do")
	public ModelAndView lessonManage(ModelAndView mv,@RequestParam(name="lno" ,required=false) String lno,
			@RequestParam(name="msg",required=false) String msg,
			HttpServletRequest request) {
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		if(loginUser == null || !loginUser.getUser_type().equals("T")) {
			mv.addObject("msg","잘못된 접근입니다 ");
			mv.setViewName("home");
			return mv;
		}
		
		int uno = loginUser.getUser_no();
		
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
		
		Date currTime = new Date(System.currentTimeMillis());
		
		mv.addObject("currTime",currTime);
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
	
	
	// 즐겨찾기 추가/삭제 ajax
	@RequestMapping("fav.do")
	@ResponseBody
	public String fav(String flag,int uno, int lno) {
		
		if(flag.equals("insert")){
			Wish userWish = new Wish();
			userWish.setL_no(lno);
			userWish.setUser_no(uno);
			
			int result = lService.insertUserFav(userWish);
			
			
			
		}else if(flag.equals("delete")){
			Wish userWish = new Wish();
			userWish.setL_no(lno);
			userWish.setUser_no(uno);
			int result = lService.deleteUserFav(userWish);	
		}
		
		
		return "asd";
	}
	
	
	
	// 리뷰 인서트
	@RequestMapping("insertReview.do")
	public ModelAndView insertReview(ModelAndView mv,HttpServletRequest request,
			Review inReview, RedirectAttributes rd
			) {
		int uNo = ((Member)request.getSession().getAttribute("loginUser")).getUser_no();
		inReview.setuNo(uNo);
		inReview.setrContent(inReview.getrContent().replace("\n", "<br>"));
		
		int result = lService.insertReview(inReview);
		
		if(result>0) {
			String msg = "리뷰를 성공적으로 등록하였습니다.";
			rd.addFlashAttribute("msg", msg);
			mv.setViewName("redirect:lessonDetail.do?lNo="+inReview.getlNo());
		}else {
			String msg = "리뷰 등록 실패";
			rd.addFlashAttribute("msg", msg);
			mv.setViewName("redirect:lessonDetail.do?lNo="+inReview.getlNo());
		}
		
		
		return mv;
	}
	
	// 리뷰 수정
	@RequestMapping("updateReview.do")
	public ModelAndView updateReview(ModelAndView mv,HttpServletRequest request,
			Review inReview, RedirectAttributes rd
			) {
		int uNo = ((Member)request.getSession().getAttribute("loginUser")).getUser_no();
		inReview.setuNo(uNo);
		inReview.setrContent(inReview.getrContent().replace("\n", "<br>"));
		
		int result = lService.updateReview(inReview);
		
		if(result>0) {
			String msg = "리뷰를 성공적으로 수정하였습니다.";
			rd.addFlashAttribute("msg", msg);
			mv.setViewName("redirect:lessonDetail.do?lNo="+inReview.getlNo());
		}else {
			String msg = "리뷰 수정 실패";
			rd.addFlashAttribute("msg", msg);
			mv.setViewName("redirect:lessonDetail.do?lNo="+inReview.getlNo());
		}
		
		
		return mv;
	}
	
	//수업정보 업데이트 하러가기
	@RequestMapping("updateLessonInfo.do")
	public ModelAndView updateLessonInfo(ModelAndView mv,
			HttpServletRequest request,
			int lNo) {
		
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		//로그인유저에 대한 처리 해주기
		
		
		LessonInfo li = lService.selectOneLI(lNo);
		ArrayList<LessonAttachment> laList = lService.selectLAofLI(lNo);
		
		li.setlIntroduction(li.getlIntroduction().replace("<br>", "\n"));
		li.setlTarget(li.getlTarget().replace("<br>", "\n"));
		
		mv.addObject("li",li);
		mv.addObject("laList",laList);
		
		mv.setViewName("lesson/lessonUpdate");
		
		return mv;
	}
	
	//수업 이미지 정보 관리하는 페이지로 가기
	@RequestMapping("updateLessonAttachment.do")
	public ModelAndView updateLessonAttachment(ModelAndView mv,
			HttpServletRequest request,
			int lNo) {
		
		
		return null;
	}
	
	
	
	
	//수업 이미지 업데이트 하는 ajax
	@RequestMapping("updateLessonImg.do")
	@ResponseBody
	public String updateLessonImg(MultipartFile file,int laNo,String cName, 
			HttpServletRequest request) {
		LessonAttachment ua = new LessonAttachment();
		ua.setoName(file.getOriginalFilename());
		ua.setLaNo(laNo);
		
		String ccName = overWriteLessonImg(file,request,cName);
		ua.setcName(ccName);
		
		int result = 0;
		if(ccName!=null) {
			 result = lService.updateLessonImg(ua);
		}
		
	
		
		String msg="";
		if(result>0) {
			msg="success";
		}else {
			msg="fail";
		}
		
		
		return msg;
	}
	
	//수업 이미지 삭제하는 ajax
	@RequestMapping("deleteLessonImg")
	@ResponseBody
	public String deleteLessonImg(int laNo,int lNo) {
		Gson gson = new Gson();
		return gson.toJson(lService.deleteLessonImg(laNo) >0 ? "success" : "fail");
	}
	
	// 수업 이미지 추가하는 ajax
	@RequestMapping("addLessonImg.do")
	@ResponseBody
	public String addLessonImg(MultipartFile file,int lNo, 
			HttpServletRequest request) {
		
		int maxNum = lService.selectMaxNum(lNo);
		
		String reFileName = addLessonImg(file,request,lNo,maxNum+1);
				
		LessonAttachment addImg = new LessonAttachment();
		addImg.setcName(reFileName);
		addImg.setLaType(maxNum+1);
		addImg.setoName(file.getOriginalFilename());
		addImg.setlNo(lNo);
		
		int result = lService.addLessonImg(addImg);
		
		LessonAttachment added =null;
		if(result>0) {
			added = lService.selectAddedImg(lNo);
		}
		
		ArrayList<LessonAttachment> laList = new ArrayList<>();
		laList.add(added);
		
		Gson gson = new Gson();
		
		
		return gson.toJson(laList);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//파일전송 메소드
	public String saveLessonImg(MultipartFile file, HttpServletRequest request,int lno,int lNum) {
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\lessonImg";
		
		File folder = new File(savePath); 
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		int dot = file.getOriginalFilename().lastIndexOf(".");
		String ext = file.getOriginalFilename().substring(dot).toLowerCase();
		String reFileName = lno+"_"+lNum+ext;
	
		String filePath = folder + "\\" + reFileName;
		
		try {
			file.transferTo(new File(filePath)); // 이 때 파일 저장 된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} 
		
		return reFileName;
	}
	
	//파일 수정 메소드
	public String overWriteLessonImg(MultipartFile file, HttpServletRequest request,String cName) {
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\lessonImg";
		
		File folder = new File(savePath); 
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		int dot = file.getOriginalFilename().lastIndexOf(".");
		String ext = file.getOriginalFilename().substring(dot).toLowerCase();
		
		int dot2 = cName.lastIndexOf(".");
		String cFirstName = cName.substring(0, dot2);
		System.out.println(cFirstName);
		
		String filePath = folder + "\\" + cFirstName+ext;
		
		try {
			file.transferTo(new File(filePath)); // 이 때 파일 저장 된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} 
		
		return cFirstName+ext;
	}
	
	
	//파일 추가 메소드
	public String addLessonImg(MultipartFile file, HttpServletRequest request,int lNo,int lNum) {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\lessonImg";
		
		File folder = new File(savePath); 
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		int dot = file.getOriginalFilename().lastIndexOf(".");
		String ext = file.getOriginalFilename().substring(dot).toLowerCase();
		
		String reFileName = lNo+"_"+lNum+ext;
		
		String filePath = folder + "\\" + reFileName;
		
		try {
			file.transferTo(new File(filePath)); // 이 때 파일 저장 된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} 
		
		
		return reFileName;
	}
	
	
	
	
	

}
