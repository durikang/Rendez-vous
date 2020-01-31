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
	
	public boolean MailSend(String CouponTitle,ArrayList<AdminMember> mlist, String[] arraycode) {
		boolean success = false;
		String setfrom = "kooda21@naver.com";
		String[] toMail = new String[mlist.size()];
		int cnt = toMail.length;
		for (int i = 0; i < cnt; i++) {
			toMail[i] = mlist.get(i).getuId();
		}

		String title = CouponTitle;

		String[] content = new String[cnt];

		for (int i = 0; i < cnt; i++) {
			content[i] = System.getProperty("line.separator")  +
						"<div id='readFrame'>\r\n" + 
						"      <div style='width: 720px; margin: 90px auto;'>\r\n" + 
						"        <div style='overflow: hidden; border-bottom: 5px solid #3d4755;'>\r\n" + 
						"        <img src='https://i.imgur.com/YQO5WnR.png' title='source: imgur.com'  alt='logo' style='width:200px; height:80px;border: 0;' loading='lazy'>\r\n" + 
						"        \r\n" + 
						"        <img src='https://i.imgur.com/wsDOeK5.png' title='source: imgur.com' style='float: right; height:80px;' loading='lazy'/></div>\r\n" + 
						"        <div style='height: 157px; background: url(http://www.iei.or.kr/resources/images/mail/mail_top_back.jpg);'>\r\n" + 
						"          <p style='font-size: 22px; font-weight: 900; font-family: NanumBarunGothic, Nanum Gothic, Dotum, Gulim, sans-serif; margin: 0; padding-top: 70px; color: #333333; text-align: center;'>(주)Rendez,vous \r\n" + 
						"            <span style='color: #27a2e9;'>"+title+"</span> 쿠폰 발송 메일입니다.</p>\r\n" + 
						"          </div>\r\n" + 
						"        <div style='border-left: 1px solid #ededed; border-right: 1px solid #ededed; padding-top: 60px; padding-bottom: 50px; text-align: center;'>\r\n" + 
						"          <p style='margin: 0; text-align: center; font-family: NanumBarunGothic, Nanum Gothic, Dotum, Gulim, sans-serif; font-size: 20px; font-weight: 900; color: #8d8d8d; padding: 0;'>\r\n" + 
						"            회원님의 쿠폰 번호는 \r\n" + 
						"            <span style='color: #5cbdf5;'>"+arraycode[i]+"</span>입니다.\r\n" + 
						"          </p>\r\n" + 
						"          <div style='background: #dbdbdb; height: 1px; width: 190px; margin: 30px auto; margin-bottom: 20px;'></div>\r\n" + 
						"          <p style='margin: 0; text-align: center; font-family: NanumBarunGothic, Nanum Gothic, Dotum, Gulim, sans-serif; font-size: 14px; color: #8d8d8d; letter-spacing: -1px; padding: 0 0 35px 0;'>\r\n" + 
						"              (주)Rendez,vous을 이용해 주셔서 감사합니다.<br>더욱 편리한 서비스를 제공하기 위해 항상 최선을 다하겠습니다.\r\n" + 
						"          </p>\r\n" + 
						"          <a href='http://localhost:8090/rendez' rel='noreferrer noopener' target='_blank'>\r\n" + 
						"            <img src='http://www.iei.or.kr/resources/images/mail/mail_botton.jpg' border=\"0\" loading='lazy'>\r\n" + 
						"          </a>\r\n" + 
						"        </div>\r\n" + 
						"        <div class='bottom' style='border-top: 5px solid #3d4755;height: 135px; font-family: NanumBarunGothic, Nanum Gothic, Dotum, Gulim, sans-serif; font-size: 12px; background-color: #DCDCDC'>\r\n" + 
						"            <div class='right-area' style='float:left'>\r\n" + 
						"                <img src='https://i.imgur.com/2I7iOj8.png' title='source: imgur.com' style='width:290px; height:120px;'/>\r\n" + 
						"            </div>\r\n" + 
						"            <div class='left-area' style='text-align:center;'>\r\n" + 
						"                <br>\r\n" + 
						"                <p style='font-size: 12px;'>(주)Rendez,vous | 상업자 등록번호 : 123-45-67891 | 대표자 : 유현식</p>\r\n" + 
						"    \r\n" + 
						"                <p style='font-size: 12px;'>강남지원 2관 : 서울특별시 강남구 테헤란로 10길 9 그랑프리 빌딩 7F</p>\r\n" + 
						"    \r\n" + 
						"                <p>&copy; 2020 (주) Rendez,vous All Right Reserved<p>\r\n" + 
						"            </div>\r\n" + 
						"        </div>\r\n" + 
						"      </div>\r\n" + 
						"    </div>"

		               + System.getProperty("line.separator") +

		               System.getProperty("line.separator");

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
