package com.kh.rendez.home;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.rendez.home.model.vo.HomeList;

@Controller    //컨트롤러 빈 선언
public class HomeEmailController {
    
    
    @Inject    //서비스를 호출하기 위해서 의존성을 주입
    JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.   
    
    //로깅을 위한 변수
    private static final Logger logger=
    LoggerFactory.getLogger(HomeEmailController.class);
    private static final String String = null;
    
    
    // mailSending 코드
        @RequestMapping( value = "home.do" , method=RequestMethod.POST )
        public ModelAndView mailSending(HttpServletRequest request, String e_mail, HttpServletResponse response_email) throws IOException {
             
            String setfrom = "rendez.vous2019.12.26@gmail.com"; // 보내는 사람 이메일
            String tomail = request.getParameter("e_mail"); // 받는 사람 이메일
            String title = "안녕하세요 rendez.vous 입니다."; // 제목
            
            String content =   // 내용                
            "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"+
            "<br><br>"+
            "2월의 강의 시간표를 안내해드리겠습니다." + 
            "<br>" + 
            "<table border=\"1\" bordercolor=\"blue\" width =\"300\" height=\"150\" align = \"center\" >" + 
            "<tr bgcolor=\"skybule\" align =\"center\">" + 
            "<th>강의명</th>\n" + 
            "<th>시간</th>\n" + 
            "</tr>" + 
            "<tr align = \"center\">" + 
            "<td>3번으로 끝내는 디자인툴!</td>\n" + 
            "<td>02-10-월  AM10:00</td>\n" + 
            "</tr>\n" + 
            "<tr align = \"center\">" + 
            "<td>일러스트<br>기초부터 탄탄하게</td>\n" + 
            "<td>02-12-수  PM07:00</td>\n" + 
            "</tr>\n" + 
            "<tr align = \"center\">" + 
            "<td>PPT<br>하나로 쉽게 완성하기</td>\n" + 
            "<td>02-13-목  AM11:00</td>\n" + 
            "</tr>\n" +
            "<tr align = \"center\">" + 
            "<td>일러스트/포토샵<br>나만의 아트워크 만들기!</td>\n" + 
            "<td>02-15-토  PM04:00</td>\n" + 
            "</tr>\n" +
            "<tr align = \"center\">" + 
            "<td>AI/PS<br>나를 브랜딩하기 위한 디자인!</td>\n" + 
            "<td>02-16-일  AM10:00</td>\n" + 
            "</tr>\n" +
            "<tr align = \"center\">" + 
            "<td>쇼핑몰[포토샵/일러]의 모든것</td>\n" + 
            "<td>02-17-월  PM08:00</td>\n" + 
            "</tr>\n" +
            "<tr align = \"center\">" + 
            "<td>초&중급 포토샵</td>\n" + 
            "<td>02-19-수  PM07:00</td>\n" + 
            "</tr>\n" +
            "<tr align = \"center\">" + 
            "<td>[사진/포토샵]<br>디자인 핵심은 3회면 충분하다.</td>\n" + 
            "<td>02-24-월  AM06:00</td>\n" + 
            "</tr>\n" +
            "<tr align = \"center\">" + 
            "<td>생활 포토샵<br>필요한 기능만 쏙쏙td>\n" + 
            "<td>02-27-목  PM09:00</td>\n" + 
            "</tr>\n" +
            "<tr align = \"center\">" + 
            "<td>아트워크클래스<br>나만의 아트워크 만들기!/4주완성!</td>\n" + 
            "<td>02-28-금  PM10:00</td>\n" + 
            "</tr>\n" +
            "</table>";          
                                   
            try {
                MimeMessage message = mailSender.createMimeMessage();
                MimeMessageHelper messageHelper = new MimeMessageHelper(message,
                        true, "UTF-8");
 
                messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
                messageHelper.setTo(tomail); // 받는사람 이메일
                messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
                messageHelper.setText(content, true); // 메일 내용
                
                mailSender.send(message);
            } catch (Exception e) {
                System.out.println(e);
            }
            
            ModelAndView mv = new ModelAndView();    //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
            mv.addObject("msg","이메일이 발송되었습니다.");
            mv.addObject("e_mail", e_mail);
            mv.setViewName("redirect:home.do");        
            
            return mv;
            
        }
        
}