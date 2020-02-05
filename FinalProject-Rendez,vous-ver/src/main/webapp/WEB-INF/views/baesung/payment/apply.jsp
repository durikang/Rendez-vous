<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


    <style>
    div, table, ul, li, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6, p {
    font-family: "Noto Sans", "CJK KR", 본고딕 !important;
}
div, table, ul, li, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6, p {
    margin: 0;
    padding: 0;
    font-size: 14px;
    font-weight: normal;
    list-style: none;
    font-family: "NotoSansCJKkr","나눔바른고딕","NanumBarunGothic","맑은 고딕","Malgun Gothic","Apple Gothic","돋움",Dotum,"Helvetica Neue",Helvetica,Arial,sans-serif !important;
}
user agent stylesheet
div {
    display: block;
}


    .header_new .hcont {
    width: 1200px;
    height: 80px;
    margin: 0 auto;
}
.header_new .search .lcont {
    width: 420px;
    height: 40px;
    border: 3px solid #ff005a;
    border-radius: 40px;
    margin-top: 10px;
}
.header_new .search .lcont .inputlmg {
    width: 40px;
    height: 40px;
    float: left;
    margin-top: 6px;
    margin-left: 10px;
}
.header_new .search .lcont input[type=text] {
    width: 350px;
    padding-top: 3px;
    margin-top: 0px;
    height: 80%;
    border: none;
    font-size: 16px;
    color: #333333;
    font-weight: 500;
}
.header_new .rcont {
    width: 620px;
    box-sizing: border-box;
    float: right;
    position: relative;
}

.header_new .rcont li.vod {
    width: 118px;
}
.header_new .rcont .padding28 {
    padding-top: 28px;
}

.header_new .rcont .padding28 {
    padding-top: 28px;
}
.header_new .rcont .proimg {
    background: #000;
    width: 55px;
    height: 55px;
    border-radius: 200px;
    background-size: cover;
    background-position: center;
}
.header_new {
    border-bottom: 1px solid #c9c9c9;
}
.header_new {
    box-sizing: border-box;
    width: 100%;
    height: 80px;
}
.header_new .rcont .padding28 {
    padding-top: 28px;
}
.header_new .rcont li {
    font-weight: 600;
    float: left;
    font-size: 16px;
    color: #333333;
    width: 90px;
    height: 30px;
    text-align: center;
    padding-right: 10px;
    float: right;
    cursor: pointer;
}

/* 전체 등록부분*/
.tutor_cont {
    width: 1100px;
    margin: 0 auto;
    padding-bottom: 100px;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}

.tutor_cont .title_box {
    overflow: hidden;
    margin-top: 30px;
    padding: 19px 0;
    border-bottom: 1px solid #c9c9c9;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.tutor_cont .title_box h3 {
    float: left;
    overflow: hidden;
    display: inline-block;
    font-size: 26px;
    color: #333;
}
.tutor_cont .title_box .steps {
    display: flex;
    float: right;
    font-size: 16px;
    color: #aaaaaa;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.tutor_cont .title_box .steps .on {
    color: rgb(184,145,105);
}
.tutor_cont .title_box .steps li {
    margin: 0 15px;
    font-size: 18px;
    font-weight: 500;
    cursor: pointer;
    letter-spacing: -0.5px;
}
.tutor_cont .title_box .steps b {
    font-size: 24px;
    font-weight: 600;
    margin: 0 3px;
}
.tutor_cont .title_box .steps img {
    width: 8px;
    margin-top: 6px;
    height: initial;
}
img {
    border: 0;
}
img {
    vertical-align: middle;
    border-style: none;
}
.tutor_cont .title_box .steps b {
    font-size: 24px;
    font-weight: 600;
    margin: 0 3px;
}


.tutor_cont .class_title {
    margin: 30px 0;
    color: #333;
    font-size: 20px;
    line-height: 1.1;
    letter-spacing: -0.5px;
    font-weight: 500;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
    
.tutor_cont .apply {
    overflow: hidden;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.tutor_cont .pf_box {
    width: 300px;
    float: left;
    border: 1px solid #ddd;
    padding: 31px;
}
.tutor_cont .pf_box .pf {
    width: 110px;
    height: 110px;
    border-radius: 50%;
    margin: 0 auto;
    background-size: cover;
    background-position: center;
}


.triangle-border.gray {
    background: #f2f2f2;
    border: none;
    text-align: left;
    padding: 20px;
}

.tutor_cont .sh_box {
    width: 770px;
    float: right;
    border-top: 1px solid #d8d9db;
}
.appcont .call .center {
    font-weight: 600;
    font-size: 20px;
    margin-top: 20px;
    padding-left: 10px;
    text-align: center;
}
.appcont .call .center2 {
    font-weight: 600;
    font-size: 32px;
    margin-top: 0px;
    padding-left: 10px;
    text-align: center;
    color: #000;
}
.appcont .bottom {
    border-bottom: 1px solid #dadada;
}
.appcont .call .center4 {
    font-size: 14px;
    margin-top: 20px;
    padding-left: 10px;
    text-align: center;
    color: rgb(184,145,105);
}
.appcont .call .center4 a {
    color: #ff005b;
    text-decoration: underline;
}
.appcont .call .center5 {
    font-size: 14px;
    margin-top: 20px;
    padding-left: 10px;
}
a {
    color: #000;
    text-decoration: none;
}
.tutor_cont .next {
    background: #888;
    color: #fff;
    padding: 20px 30px;
    width: 230px;
    margin: 40px auto;
    font-size: 16px;
    border-radius: 6px;
    text-align: center;
}
#testNext:hover{
    background:rgb(92, 92, 92);
    cursor: pointer;
}
    
.center4{
    	cursor: pointer;
    	text-decoration: underline;
}
.center4:hover{
    	cursor: pointer;
    	text-decoration: underline;
}
    
    </style>
</head>
<body>
    <c:import url="../../common/menubar.jsp"/>

	<div style="border-top: 1px solid #c9c9c9;"></div>
    <div class="tutor_cont">
        <div class="title_box">
            <h3>수업신청</h3>
            <div class="steps">
                <li><b>01</b>장소/일시</li>
                <img src="resources/baesung/images/icon_next.png">
                <li class="on"><b>02</b>신청서 작성</li>
                <img src="resources/baesung/images/icon_next.png">
                <li><b>03</b>결제</li>
            </div>
        </div>
    
        <div class="class_title">
             ${tClass.lTitle }	</div>
        
        
        
            <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    
          ga('create', 'UA-77451578-1', 'auto');
          ga('send', 'event', 'Apply', 'PhoneAuth', 'PhoneAuth', '1');
        </script>
        <div class="apply">
            <div class="pf_box">
                <div class="pf" style="background-image:url('${contextPath }/resources/user/img/${tClass.uCName}')"></div>
                <p class="triangle-border top gray" style="margin-top:50px; margin-bottom: 46px;">
                    결제/환불 방식은 바쁘시더라도 꼭 읽어보세요.
            </p></div>
            <div class="sh_box class_price">
                <div class="appcont" style="margin-top:80px;">				
                    <div class="call">
                        <div class="center">튜터님께 연락 받으실 휴대전화 번호</div>
                        <div class="center2">${loginUser.phone }</div>
                        <!--div class="center3">번호수정></div-->
                    </div>	
                    <br>
                    <div class="call bottom" style="height:157px;">
                        <div class="center4" onclick="couponPop()">랑데뷰 결제 금액 환불 요건 [환불약관 보러가기]</div>
                        <div class="center5" style="padding-left:230px;">
                            ㆍ원데이는 전체 수업료 결제로만 진행됩니다.<br>
                            ㆍ원데이 수업 진행 24시간 전에 환불 요청하는 경우 결제금액이 100% 환불됩니다.<br>
                            ㆍ수업시작시간 전 24시간 이내에는 취소가 불가능합니다.
                                            </div>				
                    </div>			
                </div>
            </div>
        </div>
        <div class="next button" id="testNext" onclick="gopay()">다음</div>
           	
    </div>
    
    <script type="text/javascript">
    
   	agree = false;	   
    function couponPop()
	{
		popupWindow = window.open('refund.do', '_blank', 'height=800,width=1200,scrollbars=no,status=no');
	}
    
    function Pagree(){
    	
    	agree = true;
    }   
    function gopay(){
    	
    	if(!agree){
    		alert("환불규정을 읽고 동의해주세요");
    		return;
    	}
    	
    	location.href = 'payment.do';
    }
    
    
    </script>
    
    <!--  -->
    
     <c:import url="../../common/footbar.jsp" /> 
    
</body>
</html>