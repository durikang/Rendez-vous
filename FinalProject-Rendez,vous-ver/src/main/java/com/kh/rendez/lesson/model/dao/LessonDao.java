package com.kh.rendez.lesson.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.lesson.model.vo.Lesson;
import com.kh.rendez.lesson.model.vo.LessonAttachment;
import com.kh.rendez.lesson.model.vo.LessonInfo;

@Repository("lDao")
public class LessonDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertLessonInfo(LessonInfo lf) {
		return sqlSession.insert("lessonInfoMapper.insertLessonInfo",lf);
	}

	public int selectLNo(int uno) {
		return sqlSession.selectOne("lessonInfoMapper.selectLNo",uno);
	}

	public int insertAttachment(LessonAttachment la) {
		return sqlSession.insert("lessonInfoMapper.insertAttachment",la);
	}

	public ArrayList<LessonInfo> selectLIList(int uno) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectLIList",uno);
	}

	public ArrayList<LessonAttachment> selectLAList(int uno) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectLAList",uno);
	}

	public int insertLessonTime(Lesson l) {
		return sqlSession.insert("lessonInfoMapper.insertLessonTime",l);
	}

	public ArrayList<Lesson> selectLList(int uno) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectLList",uno);
	}

	public ArrayList<LessonInfo> selectAllLIList() {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectAllLIList");
	}

	public LessonInfo selectOneLI(int lNo) {
		return sqlSession.selectOne("lessonInfoMapper.selectOneLI", lNo);
	}

	public ArrayList<Lesson> selectTimeofLI(int lNo) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectTimeofLI",lNo);
	}

	public ArrayList<LessonAttachment> selectLAofLI(int lNo) {
		return (ArrayList)sqlSession.selectList("lessonInfoMapper.selectLAofLI",lNo);
	}

}
