package com.kh.rendez.tutor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.rendez.lesson.model.service.LessonService;

@Controller
public class TutorController {
	
	
	@RequestMapping("tutorInsertPage.do")
	public String tuturInsertPage() {
		
		return "tutor/tutorInsert";
	}
	
	@RequestMapping("tutorInsert.do")
	public String tutorInsert(
		@RequestParam(name="certName", required=false) List<String> nameList,
		@RequestParam(name="certImg", required=false) List<MultipartFile> fileList
			) {
		
		
		for(String nl : nameList) {
			if(!nl.equals("")) {
			System.out.println(nl);
			}
		}
		
		for(MultipartFile fl : fileList ) {
			if(!fl.equals("")) {
			System.out.println(fl.getOriginalFilename());
			}
		}
	
		
		
		
		
		return "tutor/tutorInsert";
	}

	

}
