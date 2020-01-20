package com.kh.rendez.baesung.common;

import com.kh.rendez.baesung.search.model.vo.searchInfo;

public class SearchInfonation {

	public searchInfo nullInfonation(searchInfo sInfo) {
		
		if(sInfo.getsValue() != null) {
		if(sInfo.getsValue().equals("")) {
			sInfo.setsValue(null);
		}}
		
		if(sInfo.getCateMain() != null) {
		if(sInfo.getCateMain().equals("")) {
			sInfo.setCateMain(null);
		}}
		
		if(sInfo.getCateSub() != null) {
		if(sInfo.getCateSub().equals("")) {
			sInfo.setCateSub(null);
		}}
		
		if(sInfo.getRegionMain() != null) {
		if(sInfo.getRegionMain().equals("")) {
			sInfo.setRegionMain(null);
		}}
		
		if(sInfo.getRegionSub() != null) {
		if(sInfo.getRegionSub().equals("")) {
			sInfo.setRegionSub(null);
		}}
		
		if(sInfo.getsDay() != null) {
		if(sInfo.getsDay().size() == 0) {
			sInfo.setsDay(null);
		}}
		
		if(sInfo.getsTime() != null) {
		if(sInfo.getsTime().size() == 0) {
			sInfo.setsTime(null);
		}}
		
		if(sInfo.getDay() != null) {
		if(sInfo.getDay().equals("")) {
			sInfo.setDay(null);
		}}
		
		if(sInfo.getTime() != null) {
		if(sInfo.getTime().equals("")) {
			sInfo.setTime(null);
		}}

		if(sInfo.getcOrder() != null) {
			if(sInfo.getcOrder().equals("")) {
				sInfo.setcOrder(null);
			}
		}
		
		return sInfo;
	}
	
	
}
