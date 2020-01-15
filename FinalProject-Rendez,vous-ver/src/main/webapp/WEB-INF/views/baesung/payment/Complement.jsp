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
.triangle-border{
    line-height: 1.43;
    letter-spacing: -0.4px;
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
.appcont .height4 {
    height: 100px;
}
.appcont .payend {
    height: 40px;
    /* overflow: hidden; */
}
.appcont .payend .center3 {
    width: 100%;
    font-weight: 600;
    font-size: 20px;
    margin-top: 20px;
    text-align: center;
    color: #ff005b;
}
img {
    border: 0;
}
img {
    vertical-align: middle;
    border-style: none;
}
.appcont .payend {
    height: 40px;
    /* overflow: hidden; */
}
.appcont .payend .center5 {
    width: 100%;
    font-weight: 600;
    font-size: 20px;
    margin-top: 10px;
    text-align: center;
    color: rgb(184,145,105);
}
.appcont .payend .center4 {
    width: 100%;
    font-weight: 600;
    font-size: 13px;
    text-align: center;
    margin-top: 10px;
}
.appcont .payend .left {
    float: left;
    font-weight: 600;
    font-size: 16px;
    line-height: 20px;
    padding-left: 220px;
}
.appcont .payend .right {
    float: left;
    width: 300px;
    font-weight: 600;
    font-size: 16px;
    padding-left: 40px;
    color: #ff005b;
}
.appcont .payend {
    height: 40px;
    overflow: hidden;
}
.appcont .payend .left {
    float: left;
    font-weight: 600;
    font-size: 16px;
    line-height: 20px;
    padding-left: 220px;
}
.appcont .payend .right2 {
    float: left;
    width: 300px;
    font-weight: 600;
    font-size: 16px;
    padding-left: 40px;
    color: #999;
}
.appcont .height {
    height: 150px;
}
.appcont .payend {
    height: 40px;
    overflow: hidden;
}
.appcont .height {
    height: 150px;
}
.appcont .bottom {
    border-bottom: 1px solid #dadada;
}

.appcont .payend .center {
    width: 550px;
    font-weight: 600;
    font-size: 20px;
    margin-top: 20px;
    padding-left: 190px;
    text-align: center;
}   
.appcont .payend .center .text {
    font-weight: 600;
    font-size: 20px;
    margin-top:0px;
}
.appcont .payend .center .text2 {
    font-size: 16px;
    margin-top: 0px;
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
.appcont .bottom {
    border-bottom: 1px solid #dadada;
}
.appcont .height4 {
    height: 100px;
}

#testNext:hover{
    background:rgb(92, 92, 92);
    cursor: pointer;
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
                <li><b>02</b>신청서 작성</li>
                <img src="resources/baesung/images/icon_next.png">
                <li class="on"><b>03</b>결제</li>
            </div>
        </div>
    
        <div class="class_title">
            ${tClass.lTitle }	</div>
        <div class="apply">
            <div class="pf_box">
                <div class="pf" style="background-image:url(resources/user/img/${tClass.uCName})"></div>
                <p class="triangle-border top gray" style="margin-top:50px; margin-bottom: 45px;">
                    신청해 주셔서 정말 감사합니다.
                    <br>
                    <br>
                    제가 ${loginUser.user_name}님의 수업 신청서를 확인 할 때까지 잠시만 기다려주세요. 신청서 확인이 완료되면 ${loginUser.user_name}님께 직접 연락을 드립니다! 
            </p></div>
            <div class="sh_box class_price">
                <div class="appcont">
                    <div class="payend height4" style="margin-top: 119px;">
                        <div class="center3">
                            <img src="resources/baesung/images/complete.jpg?after">
                        </div>				
                    </div>
                    <div class="payend">
                        <div class="center5">
                           수업 신청이 완료되었습니다.		
                        </div>
                    </div>
                    <div class="payend">
                        <div class="center4">
                           튜터님께서 곧 연락드립니다. 		
                        </div>				
                    </div>
                    
                   <%--  <div class="payend">
                        <div class="left">
                                            수업료
                                            </div>
                        <div class="right">					
                            ${tClass.price }원 <font color="#666" style="font-size:12px;"></font>	
                        </div>
                    </div>
                    <div class="payend">
                        <div class="left">수업일시 </div>
                        <div class="right2" id="expireDate">					
                            2020
                        </div>
                    </div>--%>
                    <div class="payend height bottom" style="height:149px;">
                        <%-- <div class="center">
                            <div class="text">상세주소</div>
                            <div class="text">${tClass.lRegionDetail }</div>
                        </div> --%>
                    </div> 
                    
                </div>
            </div>
        </div>
        <a class="btn-next" href="home.do" style="text-decoration: none;"><div class="next button" id="testNext">완료</div></a>
        <input type="hidden" id="paynum" name="paynum" value="">
        <input type="hidden" id="aid" name="aid" value="155272">	
    </div>




</body>
</html>