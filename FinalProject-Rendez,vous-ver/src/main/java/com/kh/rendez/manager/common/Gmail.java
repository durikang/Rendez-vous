package com.kh.rendez.manager.common;

import java.util.ArrayList;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.kh.rendez.manager.model.vo.AdminMember;

@Component
public class Gmail {
	@Autowired
	JavaMailSender mailSender;
	
	public boolean MailSend(ArrayList<AdminMember> mlist, String[] arraycode) {
		boolean success = false;
		String setfrom = "kooda21@naver.com";
		String[] toMail = new String[mlist.size()];
		int cnt = toMail.length;
		for (int i = 0; i < cnt; i++) {
			toMail[i] = mlist.get(i).getuId();
		}

		String title = "쿠폰 코드 보내드립니다.";

		String[] content = new String[cnt];

		for (int i = 0; i < cnt; i++) {
			content[i] = System.getProperty("line.separator")  +
						"<img src=\"https://i.imgur.com/YQO5WnR.png\" title=\"source: imgur.com\" style='width:200px; height:80px;' alt='logo' style='border: 0;' loading='lazy'>"+
						
		               "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"

		               + System.getProperty("line.separator") +

		               System.getProperty("line.separator") +

		               " 쿠폰번호는 [ " + arraycode[i] + " ] 입니다. "

		               + System.getProperty("line.separator") +

		               System.getProperty("line.separator") +

		               "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다.";

		}

		try {
			MimeMessage message = mailSender.createMimeMessage();
			//MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			for (int i = 0; i < cnt; i++) {
				
				
				message.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
//				message.setTo(toMail[i]); // 받는사람 이메일
				message.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(toMail[i])); // 받는사람 이메일
				message.setSubject(title); // 메일제목은 생략이 가능하다
				message.setText(content[i],"utf-8","html"); // 메일 내용

				mailSender.send(message);
			}
			success = true;

		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return success;
	}
	
	
}
