package com.kh.rendez.home.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.rendez.home.model.dao.HomeDao;
import com.kh.rendez.home.model.vo.HomeList;

@Service("hService")
public class HomeServiceImpl implements HomeService {
   @Autowired
   private HomeDao hDao;
   
   @Override
   public ArrayList<HomeList> selectAllList() {
      return hDao.selectAllList();
   }
   
   @Override
   public ArrayList<HomeList> selecInningtList() {
      return hDao.selectInningList();
   }

   @Override
   public ArrayList<HomeList> selectDateList() {
      return hDao.selectDateList();
   }

   



}