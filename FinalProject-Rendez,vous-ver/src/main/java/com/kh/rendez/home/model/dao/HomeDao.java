package com.kh.rendez.home.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.home.model.vo.HomeList;

@Repository("hDao")
public class HomeDao {
   
   @Autowired
   SqlSessionTemplate sqlSession;
   
   public ArrayList<HomeList> selectAllList() {
      return (ArrayList)sqlSession.selectList("homeMapper.selectAllList");
   }

   public ArrayList<HomeList> selectInningList() {
      return (ArrayList)sqlSession.selectList("homeMapper.selectInningList");
   }

   public ArrayList<HomeList> selectDateList() {
      return (ArrayList)sqlSession.selectList("homeMapper.selectDateList");
   }

   

}