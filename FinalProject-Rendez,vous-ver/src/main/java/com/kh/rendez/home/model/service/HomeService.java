package com.kh.rendez.home.model.service;

import java.util.ArrayList;

import com.kh.rendez.home.model.vo.HomeList;

public interface HomeService {

   ArrayList<HomeList> selectDateList();

   ArrayList<HomeList> selecInningtList();

   ArrayList<HomeList> selectAllList();

}