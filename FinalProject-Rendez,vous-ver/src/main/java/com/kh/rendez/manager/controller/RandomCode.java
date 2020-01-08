package com.kh.rendez.manager.controller;

import java.util.Random;

public class RandomCode {
	
	
	public RandomCode() {
		super();
	}

	public StringBuffer rancode() {
		StringBuffer tmp=new StringBuffer();
		Random rnd=new Random();
		for(int i=0;i<20;i++) {
			int rIndex = rnd.nextInt(3);
			switch(rIndex) {
			case 0: 
				tmp.append((char) ((int) (rnd.nextInt(26))+97));
				break;
			case 1:
				tmp.append((char) ((int) (rnd.nextInt(26))+65));
				break;
			case 2:
				tmp.append((rnd.nextInt(10)));
				break;
			}
		}		
		return tmp;
	}
	
}
