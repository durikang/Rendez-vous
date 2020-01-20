/*package com.kh.rendez.home;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.rendez.lesson.model.service.LessonService;
import com.kh.rendez.lesson.model.vo.Lesson;

public class ClassController {
	@RequestMapping(value="topList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String boardTopList(HttpServletResponse response) throws JsonIOException, IOException {
		ArrayList<Lesson> list = LessonService.selectLList();
		
		// (1) 한글 인코딩 처리 직접 해주기
		for(Board b : list) {
			b.setbTitle(URLEncoder.encode(b.getbTitle(), "utf-8"));
			// 제목에 대한 인코딩
		}
		
		// 보통은 그냥 Gson을 생성해서 보내지만 어떤 세팅이 필요하다면(ex. 날짜 포맷)
		// GsonBuilder를 이용해서 Gson을 생성
		//Gson gson = new Gson();
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		//gson.toJson(list, response.getWriter());
		
		return gson.toJson(list);
	}
}
*/