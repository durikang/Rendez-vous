<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    	
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


    <style>

    /* 헤더영역 시작*/
#container {
    width: 100%;
}
element.style {
    display: none;
}
.fixed {
    height: 240px;
}
.fixed {
    width: 100%;
    position: absolute;
    z-index: 10;
    margin-top: 50px;
}


.cont2 {
    padding-bottom: 20px;
    overflow: hidden;
}
.cont2 .cont2_class {
    height: 320px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    width: 330px;
    float: left;
    cursor: pointer;
    background-color: white;
    margin-bottom: 30px;
    position: relative;
}
.cont2 .cont2_class .img {
    height: 200px;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    box-sizing: border-box;
    padding-top: 10px;
}
.cont2 .cont2_class .img .day {
    width: 80px;
    background-color: #f58500;
    color: white;
    font-size: 14px;
    height: 20px;
    text-align: center;
    opacity: 0.85;
}
.cont2 .cont2_class .img .d_day {
    width: 80px;
    background-color: #333873;
    color: white;
    font-size: 14px;
    height: 20px;
    text-align: center;
    opacity: 0.85;
}
.cont2 .cont2_class .profile_box {
    box-sizing: border-box;
    width: 80px;
    float: right;
    margin-left: 240px;
    position: absolute;
    height: 100px;
    margin-top: -27px;
    text-align: center;
}
.cont2 .cont2_class .title {
    float: left;
    width: 64%;
    margin-left: 5%;
    margin-top: 14px;
    height: 40px;
    font-size: 14px;
    overflow: hidden;
    color: black;
    font-weight: bold;
    line-height: 1.4;
}
.cont2 .cont2_class .profile {
    z-index: 10;
}
.cont2 .cont2_class .profile {
    width: 45px;
    height: 45px;
    border-radius: 50%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: absolute;
    float: left;
    margin-left: 17px;
}
.cont2 .cont2_class .profile_box .name {
    width: 100%;
    margin-top: 50px;
    overflow: hidden;
    color: black;
}
.cont2 .cont2_class .profile_box .nick {
    width: 100%;
    overflow: hidden;
    font-size: 10px;
}

.cont2 .cont2_class .price {
    margin-top: 60px;
    padding: 0 0 0px 15px;
}
.cont2 .cont2_class .info .info2 {
    padding: 5px;
    overflow: hidden;
    padding-left: 15px;
    position: absolute;
}
.cont2 .cont2_class .info .info2 .star {
    float: left;
    color: #ffc600;
}

.cont2 .cont2_class .info .info2 .review {
    margin-right: 15px;
    float: left;
    color: #999;
}
.cont2 .cont2_class .info .info2 .location {
    float: left;
    border-left: 1px solid #ccc;
    padding-left: 10px;
    color: #999;
}
.cont2 .cont2_class:nth-child(3n+2) {
    margin-left: 29px;
    margin-right: 29px;
}
.main3_cont .cont2_box {
    background-color: white;
    box-sizing: border-box;
    padding-bottom: 20px;
    width: 1050px;
    margin: 0 auto;
}
.cont2 {
    padding-bottom: 20px;
    overflow: hidden;
}

.main3_cont .page {
    font-weight: bold;
    margin: 0 auto;
    overflow: hidden;
    text-align: center;
    padding: 10px 0 20px 0;
}
.main3_cont .page a {
    padding: 5px 10px 5px 10px;
    cursor: pointer;
    color: #afafaf;
}
.main3_cont .page b {
    color: #ff005a;
}
.footer_cont {
    width: 1050px;
    margin: 0 auto;
    padding: 35px 0 70px 0;
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
.main3_cont {
    width: 100%;
    margin: 0 auto;
}

.main3_cont .cate_list {
    overflow: hidden;
}
.main3_cont .cate_list ul {
    display: flex;
    width: 1252px;
    margin: 0 auto;
    position: absolute;
    left: 0;
    right: 0;
    height: 61px;
    z-index: 50;
}
ul {
    list-style: none;
    padding-left: 0px;
}
.main3_cont .cate_list ul li {
    background: #fff;
    width: 10.7%;
    text-align: center;
    padding: 22px 0;
    font-size: 14px;
    color: #555;
    letter-spacing: -0.4px;
    border-bottom: 1px solid #c9c9c9;
    box-sizing: border-box;
    cursor: pointer;
}



.main3_cont .cate_list ul .cate2 {
    border-left: 1px solid #c9c9c9;
    border-right: 1px solid #c9c9c9;
    border-bottom: none;
}


.main3_cont .catesub_list.cates {
    display: none;
    position: absolute;
}

.main3_cont .catesub_list {
    position: static;
    height: 217px;
    z-index: 10;
}
.main3_cont .catesub_list {
    border-bottom: 1px solid #c9c9c9;
    border-top: 1px solid #c9c9c9;
    left: 0;
    right: 0;
    position: absolute;
    background-color: white;
    box-sizing: border-box;
    overflow: hidden;
    /* border-top: none; */
    z-index: 1000;
    margin-top: -1px;
}

.main3_cont .catesub_list .main {
    width: 1180px;
    margin: 0 auto;
    padding: 10px 0;
}
.main3_cont .catesub_list .main li:nth-child(1) {
    padding-left: 0;
}
.main3_cont .catesub_list .main  li {
    color: #555;
    font-size: 14px;
    padding: 12px 16px;
    display: inline-block;
 
}

.main3_cont .catesub_list .main > li {
    color: #555;
    font-size: 14px;
    padding: 12px 16px;
    display: inline-block;
    height: 40px;
}

main3_cont .cate_list ul li:last-child {
    width: 4%;
    border-left: 1px solid #c9c9c9;
    border-right: 1px solid #c9c9c9;
}
.main3_cont .cate_list ul li:last-child img:first-child {
    display: block;
    padding-left: 11px;
}
.main3_cont .catesub_list .main li:nth-child(1) {
    padding-left: 0;
}

.main3_cont .catesub_list.cates {
    position: absolute;
}

.main3_cont .catesub_list {
    position: static;
    height: 217px;
    z-index: 10;
}
.main3_cont .catesub_list {
    border-bottom: 1px solid #c9c9c9;
    border-top: 1px solid #c9c9c9;
    left: 0;
    right: 0;
    position: absolute;
    background-color: white;
    box-sizing: border-box;
    overflow: hidden;
    /* border-top: none; */
    z-index: 1000;
    margin-top: -1px;
}
.main3_cont .catesub_list.filter {
    background: #f1f1f1;
    z-index: 100;
}
.main3_cont .catesub_list.filter .inbox {
    height: 45px;
    margin: 15px 0;
}
.main3_cont .catesub_list.filter .inbox .left {
    padding-top: 13px;
    float: left;
    width: 100px;
    font-size: 16px;
    color: #333;
    letter-spacing: -0.4px;
    font-weight: bold;
}
.main3_cont .catesub_list.filter .inbox .right {
    float: left;
    width: 1000px;
}
[role=button], a, area, button, input:not([type=range]), label, select, summary, textarea {
    touch-action: manipulation;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
.main3_cont .catesub_list.filter .inbox .right select {
    border: 1px solid #ddd;
    border-radius: 4px;
    color: #555;
    padding: 5px 15px;
    font-size: 14px;
    height: 44px;
    box-sizing: border-box;
    cursor: pointer;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
.main3_cont .catesub_list.filter .inbox .right .days, .main3_cont .catesub_list.filter .inbox .right .days ul {
    display: inline-block;
}
.main3_cont .catesub_list.filter .inbox .right .filter_button {
    background: #888;
    border-radius: 4px;
    display: inline-block;
    padding: 14px 20px;
    font-size: 14px;
    color: #fff;
    float: right;
    margin-right: -115px;
}
option {
    font-weight: normal;
    display: block;
    white-space: pre;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}

.off {
    display: none;
}

.main3_cont .catesub_list.filter .inbox .right .days li:first-child {
    margin-left: 0;
    z-index: 10;
}
.main3_cont .catesub_list.filter .inbox .right .days li {
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 4px;
    margin: 0 5px;
    text-align: center;
    box-sizing: border-box;
    padding: 15px 15px;
    cursor: pointer;
}

.main3_cont .filter_head {
    padding-top: 30px;
}
.main3_cont .filter_head {
    width: 1044px;
    margin: 0 auto;
    color: black;
    font-size: 14px;
    text-align: right;
    margin-bottom: 20px;
    font-weight: bold;
    overflow: hidden;
}
.main3_cont .num_class {
    color: #333;
    font-size: 14px;
    text-align: right;
    padding: 10px;
    float: left;
    display: inline;
}
.main3_cont .page {
    font-weight: bold;
    margin: 0 auto;
    overflow: hidden;
    text-align: center;
    padding: 10px 0 20px 0;
}
.main3_cont .page a {
    padding: 5px 10px 5px 10px;
    cursor: pointer;
    color: #afafaf;
}
.main3_cont .catesub_list.filter {
    background: #f1f1f1;
    z-index: 100;
}
.main3_cont .catesub_list {
    position: static;
    height: 217px;
    z-index: 10;
}
.main3_cont .catesub_list {
    border-bottom: 1px solid #c9c9c9;
    border-top: 1px solid #c9c9c9;
    left: 0;
    right: 0;
    position: absolute;
    background-color: white;
    box-sizing: border-box;
    overflow: hidden;
    /* border-top: none; */
    z-index: 1000;
    margin-top: -1px;
}

.main3_cont .catesub_list.filter .inbox .right .days li.on {
    color: #ff005a;
    border: 1px solid #ff005a;
}


.main3_cont .catesub_list.filter .inbox .right select:focus {
    border: 1px solid #ff005a;
    color: #ff005a;
    outline: none;
}
.main3_cont .catesub_list.filter .inbox .right .filter_button:hover {
    background: #555;
    cursor: pointer;
}


.main3_cont .cate_list ul .cate2 {
    border-left: 1px solid #c9c9c9;
    border-right: 1px solid #c9c9c9;
    border-bottom: none;
}
.main3_cont .catesub_list.filter .inbox .right .days li {
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 4px;
    margin: 0 5px;
    text-align: center;
    box-sizing: border-box;
    padding: 15px 15px;
    cursor: pointer;
}


.cont2 .cont2_class .price .price2 {
    font-size: 16px;
    color: #ff005a;
    font-weight: bold;
    display: inline;
}

.inbox ul{
    margin: 0px;
}

.main3_cont .cate_list ul li:last-child {
    width: 4%;
    border-left: 1px solid #c9c9c9;
    border-right: 1px solid #c9c9c9;
}

.cate_list ul li:hover{
   
    border-left: 1px solid #c9c9c9;
    border-right: 1px solid #c9c9c9; 
   
}

.main3_cont a:hover{
text-decoration: none;
    color: #afafaf;
}
.cont2_class:hover{
    opacity: 65%;
}

.main3_cont a {
	color: black;
	text-decoration: none;
}


		.star-rating { width:65px; }                
		.star-rating,.star-rating span { display:inline-block; height:12px; overflow:hidden; background:url('resources/baesung/images/ystar2.png')no-repeat; }
		.star-rating span{ background-position:left bottom; line-height:0; vertical-align:top; }
	

    </style>

</head>
<body style="">
<c:import url="../../common/menubar.jsp"/>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MTJJTC6"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    <div id="wrap">
    <!--HEADER -->
	<div style="border-bottom: 1px solid #c9c9c9;"></div>
    <!-- //HEADER -->
    <script>
        // 카테고리 보기
        fbq('track', 'Search', {
         search_string: '영어회화'
        });
    </script>
    <!-- CONTAINER -->
    <div id="container">
    <div class="fixed" id="menu_back_fixed" style="display: none;">
    </div>
        <div class="main3_cont">
            <div class="cate_list">
                <ul>
                   <li class="cate cate3" onmouseover="menuView(0)"  id="menu0">
                   <a href="cateMain.do?cateMain=인기수업"><div id="cate1" class="cMain">인기수업</div></a></li>
                   <li class="cate cate3" onmouseover="menuView(1)"  id="menu1">
                   <a href="cateMain.do?cateMain=디자인"><div id="cate2" class="cMain">디자인</div></a></li>
   
                   <li class="cate cate3" onmouseover="menuView(2)"  id="menu2">
                   <a href="cateMain.do?cateMain=실무역량"><div id="cate3" class="cMain">실무역량</div></a></li>
   
                   <li class="cate cate3" onmouseover="menuView(3)"  id="menu3">
                   <a href="cateMain.do?cateMain=뷰티"><div id="cate4" class="cMain">뷰티</div></a></li>
   
			       <li class="cate cate3" onmouseover="menuView(4)" onmouseout="menuView2()" id="menu4">
			       <a href="cateMain.do?cateMain=영상"><div id="cate5" class="cMain">영상</div></a></li>
   
                   <li class="cate cate3" onmouseover="menuView(5)"  id="menu5">
                   <a href="cateMain.do?cateMain=외국어"><div id="cate6" class="cMain">외국어</div></a></li>			
   
                   <li class="cate cate3" onmouseover="menuView(6)"  id="menu6">
                   <a href="cateMain.do?cateMain=음악"><div id="cate7" class="cMain">음악</div></a></li>
   
                   <li class="cate cate3" onmouseover="menuView(7)" id="menu7">
                   <a href="cateMain.do?cateMain=라이프스타일"><div id="cate8" class="cMain">라이프스타일</div></a></li>			
                    
                                    <li class="cate cate3" onmouseover="menuView(8)"  id="menu8" style="font-weight:bold;cursor:pointer;pading-left:10px;font-size:16px; ">
                    <a href="cateMain.do?cateMain=기타"><div id="cate9" style="font-size: 14px; font-weight: 500" class="cMain">기타</div></a></li>			
                                    <li id="menu9" onclick="filterView();" class="cate cate3" style="background-color: rgb(255, 255, 255); border-bottom: 1px solid rgb(201, 201, 201);">
                        <img src="resources/baesung/images/icon_filter.png" id="filterImage" style="display: block;">
                        <img src="resources/baesung/images/cls.png" id="filterCloseImage" style="display: none;">
                    </li>
                </ul>
            </div>
            <div style="padding-top:60px;border-bottom:1px solid #c9c9c9;"></div>
            
            <div class="catesub_list cates" onmouseover="menuView3()" onmouseout="menuView2()" id="sub0" style="display: none;">
                <div class="main">
                    <li><a href="cateSub.do?cateSub=탈잉이벤트" class="cSub">탈잉이벤트</a></li>
                    <li><a href="cateSub.do?cateSub=투잡" class="cSub">투잡</a></li>
                    <li><a href="cateSub.do?cateSub=퍼스널컬러" class="cSub">퍼스널컬러</a></li>
                    <li><a href="cateSub.do?cateSub=엑셀"class="cSub">엑셀</a></li>
                    <li><a href="cateSub.do?cateSub=댄스"class="cSub">댄스</a></li>
                    <li><a href="cateSub.do?cateSub=메이크업"class="cSub">메이크업</a></li>
                    <li><a href="cateSub.do?cateSub=프리미어"class="cSub">프리미어</a></li>
                    <li><a href="cateSub.do?cateSub=포토샵"class="cSub">포토샵</a></li>
                    <li><a href="cateSub.do?cateSub=방송댄스"class="cSub">방송댄스</a></li>
                    <li><a href="cateSub.do?cateSub=보컬"class="cSub">보컬</a></li>
                    <li><a href="cateSub.do?cateSub=PT"class="cSub">PT</a></li>
                    <li><a href="cateSub.do?cateSub=에프터이펙트"class="cSub">에프터이펙트</a></li>
                    <li><a href="cateSub.do?cateSub=WEB개발"class="cSub">WEB개발</a></li>
                    <li><a href="cateSub.do?cateSub=영어회화"class="cSub">영어회화</a></li>
                    <li><a href="cateSub.do?cateSub=핸드메이드"class="cSub">핸드메이드</a></li>
                    <li><a href="cateSub.do?cateSub=마케팅"class="cSub">마케팅</a></li></div>
            </div>
    
                    <div class="catesub_list cates" onmouseover="menuView3()" onmouseout="menuView2()" id="sub1" style="display: none;">
                <div class="main">
                    <li><a href="cateSub.do?cateSub=포토샵" class="cSub">포토샵</a></li>
                    <li><a href="cateSub.do?cateSub=일러스트레이터" class="cSub">일러스트레이터</a></li>
                    <li><a href="cateSub.do?cateSub=건축" class="cSub">건축</a></li>
                    <li><a href="cateSub.do?cateSub=제품디자인" class="cSub">제품디자인</a></li>
                    <li><a href="cateSub.do?cateSub=UX/UI디자인" class="cSub">UX/UI디자인</a></li>
                    <li><a href="cateSub.do?cateSub=편집디자인" class="cSub">편집디자인</a></li>
                    <li><a href="cateSub.do?cateSub=라이트룸" class="cSub">라이트룸</a></li>
                    <li><a href="cateSub.do?cateSub=애니메이션" class="cSub">애니메이션</a></li></div>
            </div>
                    <div class="catesub_list cates" onmouseover="menuView3()" onmouseout="menuView2()" id="sub2" style="display: none;">
                <div class="main">
                    <li><a href="cateSub.do?cateSub=DataScience" class="cSub">DataScience</a></li>
                    <li><a href="cateSub.do?cateSub=창업" class="cSub">창업</a></li>
                    <li><a href="cateSub.do?cateSub=스피치" class="cSub">스피치</a></li>
                    <li><a href="cateSub.do?cateSub=엑셀" class="cSub">엑셀</a></li>
                    <li><a href="cateSub.do?cateSub=파워포인트" class="cSub">파워포인트</a></li>
                    <li><a href="cateSub.do?cateSub=업무 노하우" class="cSub">업무 노하우</a></li>
                    <li><a href="cateSub.do?cateSub=재무회계" class="cSub">재무회계</a></li>
                    <li><a href="cateSub.do?cateSub=브랜딩" class="cSub">브랜딩</a></li>			</div>
            </div>
                    <div class="catesub_list cates" onmouseover="menuView3()" onmouseout="menuView2()" id="sub3" style="display: none;">
                <div class="main">
                    <li><a href="cateSub.do?cateSub=메이크업" class="cSub">메이크업</a></li>
                    <li><a href="cateSub.do?cateSub=패션" class="cSub">패션</a></li>
                    <li><a href="cateSub.do?cateSub=헤어" class="cSub">헤어</a></li>
                    <li><a href="cateSub.do?cateSub=스킨케어/마사지" class="cSub">스킨케어/마사지</a></li>
                    <li><a href="cateSub.do?cateSub=퍼스널컬러" class="cSub">퍼스널컬러</a></li>
                    <li><a href="cateSub.do?cateSub=네일" class="cSub">네일</a></li>			</div>
            </div>
                    <div class="catesub_list cates" onmouseover="menuView3()" onmouseout="menuView2()" id="sub4" style="display: none;">
                <div class="main">
                    <li><a href="cateSub.do?cateSub=프리미어" class="cSub">프리미어</a></li>
                    <li><a href="cateSub.do?cateSub=영상기획/촬영" class="cSub">영상기획/촬영</a></li>
                    <li><a href="cateSub.do?cateSub=영상(기타)" class="cSub">영상(기타)</a></li>
                    <li><a href="cateSub.do?cateSub=에프터이펙트" class="cSub">에프터이펙트</a></li>
                    <li><a href="cateSub.do?cateSub=파이널컷" class="cSub">파이널컷</a></li>
                    <li><a href="cateSub.do?cateSub=여행영상" class="cSub">여행영상</a></li>
                    <li><a href="cateSub.do?cateSub=시포디" class="cSub">시포디</a></li>
                    <li><a href="cateSub.do?cateSub=VJ" class="cSub">VJ</a></li>			</div>
            </div>
                    <div class="catesub_list cates" onmouseover="menuView3()" onmouseout="menuView2()" id="sub5" style="display: none;">
                <div class="main">
                    <li><a href="cateSub.do?cateSub=영어회화" class="cSub">영어회화</a></li>
                    <li><a href="cateSub.do?cateSub=중국어" class="cSub">중국어</a></li>
                    <li><a href="cateSub.do?cateSub=일본어" class="cSub">일본어</a></li>
                    <li><a href="cateSub.do?cateSub=외국어(기타)" class="cSub">외국어(기타)</a></li>
                    <li><a href="cateSub.do?cateSub=토익/토플" class="cSub">토익/토플</a></li>
                    <li><a href="cateSub.do?cateSub=스페인어" class="cSub">스페인어</a></li>
                    <li><a href="cateSub.do?cateSub=프랑스어" class="cSub">프랑스어</a></li>
                    <li><a href="cateSub.do?cateSub=비즈니스" class="cSub">비즈니스</a></li>
                    <li><a href="cateSub.do?cateSub=여행 외국어" class="cSub">여행 외국어</a></li>
                    <li><a href="cateSub.do?cateSub=독일어" class="cSub">독일어</a></li>
                    <li><a href="cateSub.do?cateSub=오픽/토스" class="cSub">오픽/토스</a></li>
                    <li><a href="cateSub.do?cateSub=Writing" class="cSub">Writing</a></li>
                    <li><a href="cateSub.do?cateSub=언어교환" class="cSub">언어교환</a></li>			</div>
            </div>
                    <div class="catesub_list cates" onmouseover="menuView3()" onmouseout="menuView2()" id="sub6" style="display: none;">
                <div class="main">
                    <li><a href="cateSub.do?cateSub=보컬" class="cSub">보컬</a></li>
                    <li><a href="cateSub.do?cateSub=피아노" class="cSub">피아노</a></li>
                    <li><a href="cateSub.do?cateSub=미디작곡" class="cSub">미디작곡</a></li>
                    <li><a href="cateSub.do?cateSub=기타연주" class="cSub">기타연주</a></li>
                    <li><a href="cateSub.do?cateSub=드럼" class="cSub">드럼</a></li>
                    <li><a href="cateSub.do?cateSub=국악" class="cSub">국악</a></li>
                    <li><a href="cateSub.do?cateSub=랩" class="cSub">랩</a></li>
                    <li><a href="cateSub.do?cateSub=디제잉" class="cSub">디제잉</a></li>
                    <li><a href="cateSub.do?cateSub=바이올린" class="cSub">바이올린</a></li>
                    <li><a href="cateSub.do?cateSub=오케스트라" class="cSub">오케스트라</a></li>
                    <li><a href="cateSub.do?cateSub=성악" class="cSub">성악</a></li>
                    <li><a href="cateSub.do?cateSub=첼로" class="cSub">첼로</a></li>
                    <li><a href="cateSub.do?cateSub=우쿨렐레" class="cSub">우쿨렐레</a></li>			</div>
            </div>
                    <div class="catesub_list cates" onmouseover="menuView3()" onmouseout="menuView2()" id="sub7" style="display: none;">
                <div class="main">
                    <li><a href="cateSub.do?cateSub=핸드메이드" class="cSub">핸드메이드</a></li>
                    <li><a href="cateSub.do?cateSub=사진" class="cSub">사진</a></li>
                    <li><a href="cateSub.do?cateSub=플라워" class="cSub">플라워</a></li>
                    <li><a href="cateSub.do?cateSub=연기" class="cSub">연기</a></li>
                    <li><a href="cateSub.do?cateSub=요리/베이킹" class="cSub">요리/베이킹</a></li>
                    <li><a href="cateSub.do?cateSub=커피/차" class="cSub">커피/차</a></li>
                    <li><a href="cateSub.do?cateSub=여행/투어" class="cSub">여행/투어</a></li>
                    <li><a href="cateSub.do?cateSub=사주/타로" class="cSub">사주/타로</a></li>
                    <li><a href="cateSub.do?cateSub=반려동물" class="cSub">반려동물</a></li>
                    <li><a href="cateSub.do?cateSub=술" class="cSub">술</a></li>
                    <li><a href="cateSub.do?cateSub=마술" class="cSub">마술</a></li>
                    <li><a href="cateSub.do?cateSub=도예/물레" class="cSub">도예/물레</a></li>
                    <li><a href="cateSub.do?cateSub=가죽공예" class="cSub">가죽공예</a></li>
                    <li><a href="cateSub.do?cateSub=바둑" class="cSub">바둑</a></li>			</div>
            </div>
                
            <div class="catesub_list cates" onmouseover="menuView3()" onmouseout="menuView2()" id="sub8" style="display: none;">
                <div class="main">
                    <li><a href="cateSub.do?cateSub=WEB개발" class="cSub">WEB개발</a></li>
                    <li><a href="cateSub.do?cateSub=파이썬" class="cSub">파이썬</a></li>
                    <li><a href="cateSub.do?cateSub=APP개발" class="cSub">APP개발</a></li>
                    <li><a href="cateSub.do?cateSub=알고리즘" class="cSub">알고리즘</a></li>
                    <li><a href="cateSub.do?cateSub=게임제작" class="cSub">게임제작</a></li>
                    <li><a href="cateSub.do?cateSub=워드프레스" class="cSub">워드프레스</a></li>
                    <li><a href="cateSub.do?cateSub=아두이노" class="cSub">아두이노</a></li>
                    <li><a href="cateSub.do?cateSub=Database" class="cSub">Database</a></li>
                    <li><a href="cateSub.do?cateSub=해킹" class="cSub">해킹</a></li>
                    <li><a href="cateSub.do?cateSub=방송댄스" class="cSub">방송댄스</a></li>
                    <li><a href="cateSub.do?cateSub=댄스" class="cSub">댄스</a></li>
                    <li><a href="cateSub.do?cateSub=수상/레저" class="cSub">수상/레저</a></li>
                    <li><a href="cateSub.do?cateSub=농구/축구" class="cSub">농구/축구</a></li>
                    <li><a href="cateSub.do?cateSub=보드" class="cSub">보드</a></li>
                    <li><a href="cateSub.do?cateSub=액티비티 기타" class="cSub">액티비티 기타</a></li>
                    <li><a href="cateSub.do?cateSub=호신술/무술" class="cSub">호신술/무술</a></li>
                    <li><a href="cateSub.do?cateSub=무용" class="cSub">무용</a></li>
                    <li><a href="cateSub.do?cateSub=볼링" class="cSub">볼링</a></li>
                    <li><a href="cateSub.do?cateSub=클라이밍" class="cSub">클라이밍</a></li>
                    <li><a href="cateSub.do?cateSub=체험이용권" class="cSub">체험이용권</a></li>
                    <li><a href="cateSub.do?cateSub=투잡" class="cSub">투잡</a></li>
                    <li><a href="cateSub.do?cateSub=기타 재테크" class="cSub">기타 재테크</a></li>
                    <li><a href="cateSub.do?cateSub=주식투자" class="cSub">주식투자</a></li>
                    <li><a href="cateSub.do?cateSub=부동산" class="cSub">부동산</a></li>
                    <li><a href="cateSub.do?cateSub=가상화폐" class="cSub">가상화폐</a></li>
                    <li><a href="cateSub.do?cateSub=공인자격증" class="cSub">공인자격증</a></li>
                    <li><a href="cateSub.do?cateSub=기사" class="cSub">기사</a></li>
                    <li><a href="cateSub.do?cateSub=취업/이직" class="cSub">취업/이직</a></li>
                    <li><a href="cateSub.do?cateSub=심리상담" class="cSub">심리상담</a></li>
                    <li><a href="cateSub.do?cateSub=자기관리" class="cSub">자기관리</a></li>
                    <li><a href="cateSub.do?cateSub=출판/글쓰기" class="cSub">출판/글쓰기</a></li>
                    <li><a href="cateSub.do?cateSub=기타 자기계발" class="cSub">기타 자기계발</a></li>
                    <li><a href="cateSub.do?cateSub=모임/스터디" class="cSub">모임/스터디</a></li>
                    <li><a href="cateSub.do?cateSub=커리어" class="cSub">커리어</a></li>
                    <li><a href="cateSub.do?cateSub=인문" class="cSub">인문</a></li>
                    <li><a href="cateSub.do?cateSub=잡학지식/상식" class="cSub">잡학지식/상식</a></li>
                    <li><a href="cateSub.do?cateSub=기타미술" class="cSub">기타미술</a></li>
                    <li><a href="cateSub.do?cateSub=드로잉/스케치" class="cSub">드로잉/스케치</a></li>
                    <li><a href="cateSub.do?cateSub=캘리그래피" class="cSub">캘리그래피</a></li>
                    <li><a href="cateSub.do?cateSub=아크릴화/유화" class="cSub">아크릴화/유화</a></li>
                    <li><a href="cateSub.do?cateSub=수채화" class="cSub">수채화</a></li>
                    <li><a href="cateSub.do?cateSub=아이패드/태블릿 드로잉" class="cSub">아이패드/태블릿 드로잉</a></li>
                    <li><a href="cateSub.do?cateSub=동양화" class="cSub">동양화</a></li>
                    <li><a href="cateSub.do?cateSub=팝아트/인물화" class="cSub">팝아트/인물화</a></li>
                    <li><a href="cateSub.do?cateSub=PT" class="cSub">PT</a></li>
                    <li><a href="cateSub.do?cateSub=요가" class="cSub">요가</a></li>
                    <li><a href="cateSub.do?cateSub=팀 운동(GX)" class="cSub">팀 운동(GX)</a></li>
                    <li><a href="cateSub.do?cateSub=교정/재활" class="cSub">교정/재활</a></li>
                    <li><a href="cateSub.do?cateSub=필라테스" class="cSub">필라테스</a></li>
                    <li><a href="cateSub.do?cateSub=온라인PT/식단관리" class="cSub">온라인PT/식단관리</a></li>
                    <li><a href="cateSub.do?cateSub=스쿼시/배드민턴/테니스" class="cSub">스쿼시/배드민턴/테니스</a></li>
                    <li><a href="cateSub.do?cateSub=골프" class="cSub">골프</a></li>
                    <li><a href="cateSub.do?cateSub=발레/체조/폴댄스" class="cSub">발레/체조/폴댄스</a></li>
                    <li><a href="cateSub.do?cateSub=줌바" class="cSub">줌바</a></li>
                    <li><a href="cateSub.do?cateSub=마케팅" class="cSub">마케팅</a></li>			</div>
            </div>
            
            <div class="catesub_list filter" onmouseover="menuView3()" onmouseout="menuView2()" id="sub9" style="display: block;">
                <div class="main">
                    <div class="inbox">
                        <div class="left">지역</div>
                        <div class="right" id="regionSub">
                            <input type="hidden" id="region" value="">
                            <input type="hidden" id="regionMain" value="">
                            <select onchange="regionSelect(this.value)" id="MainIndex">
                                <option value="">지역ALL</option>
                                                        <option value="서울" >서울</option>
												<option value="경기" >경기</option>
												<option value="인천" >인천</option>
												<option value="부산" >부산</option>
												<option value="경상" >경상,대구,울산</option>
												<option value="대전" >대전,충청</option>
												<option value="강원" >강원</option>
												<option value="광주" >광주,전라,제주</option>
                                                    </select>		
                            
                                                        <select id="regionSubLayer서울" style="margin-left:10px;" class="off" onchange="regionSubSelect(this.value)">
                                                                            <option value="">서울 ALL</option>
                                                                                    <option value='강남'>강남</option>
                                                                                    <option value='신촌홍대'>신촌홍대</option>
																					<option value='건대'>건대</option>
																					<option value='종로'>종로</option>
																					<option value='사당'>사당</option>
																					<option value='잠실'>잠실</option>
																					<option value='신림'>신림</option>
																					<option value='마포'>마포</option>
																					<option value='영등포'>영등포</option>
																					<option value='성북'>성북</option>
																					<option value='용산'>용산</option>
																					<option value='목동'>목동</option>
																					<option value='혜화'>혜화</option>
																					<option value='왕십리'>왕십리</option>
																					<option value='노원'>노원</option>
																					<option value='구로'>구로</option>
																					<option value='동작'>동작</option>
																					<option value='수유'>수유</option>
																					<option value='회기'>회기</option>
																					<option value='은평'>은평</option>
																					<option value='신사'>신사</option>
																					<option value='충무로'>충무로</option>
																					<option value='강서'>강서</option>
																					<option value='미아'>미아</option>
																					<option value='청량리'>청량리</option>
																					<option value='마곡더랜드타워'>마곡더랜드타워</option>
																					<option value='정릉'>정릉</option>
																					<option value='셀렉티드연남'>셀렉티드연남</option>
																					<option value='학여울'>학여울</option>
                                                        
                                						</select>
                                                        <select id="regionSubLayer경기" style="margin-left:10px;" class="off" onchange="regionSubSelect(this.value)">
                                                                            <option value="">경기 ALL</option>
                                                                                    <option value='분당'>분당</option>
                                                                                    <option value='수원'>수원</option>
                                                                                    <option value='일산'>일산</option>
                                                                                    <option value='서현'>서현</option>
                                                                                    <option value='의정부'>의정부</option>
                                                                                    <option value='안양'>안양</option>
                                                                                    <option value='안산'>안산</option>
                                                                                    <option value='용인'>용인</option>
                                                                                    <option value='남양주'>남양주</option>
                                                                                    <option value='에버랜드'>에버랜드</option>
                                                                                    <option value='광명'>광명</option>
                                                                                    <option value='파주'>파주</option>
                                                                                    <option value='부천'>부천</option>
                                                                                    <option value='하남'>하남</option>
                                                                                    <option value='이천'>이천</option>
                                						</select>
                                                        <select id="regionSubLayer인천" style="margin-left:10px;" class="off" onchange="regionSubSelect(this.value)">
                                                                            <option value="">인천 ALL</option>
                                                                                    <option value='부평'>부평</option>
                                                                                    <option value='구월동'>구월동</option>
                                                                                    <option value='송도'>송도</option>
                                                                                    <option value='계양'>계양</option>
                                                                                    <option value='간석동'>간석동</option>
                                						</select>
                                                        <select id="regionSubLayer부산" style="margin-left:10px;" class="off" onchange="regionSubSelect(this.value)">
                                                                            <option value="">부산 ALL</option>
                                                                                    <option value='부산서면'>부산서면</option>
                                                                                    <option value='부산해운대'>부산해운대</option>
                                                                                    <option value='부산부경대'>부산부경대</option>
                                                                                    <option value='부산대'>부산대</option>
                                                                                    <option value='부산동래'>부산동래</option>
                                                                                    <option value='부산사상'>부산사상</option>
                                                                                    <option value='부산남포'>부산남포</option>
                                                                                    <option value='광안리'>광안리</option>
                                                                                    <option value='수영구'>수영구</option>
                                                                                    <option value='부산시청'>부산시청</option>
				
                                						</select>
                                                        <select id="regionSubLayer경상" style="margin-left:10px;" class="off" onchange="regionSubSelect(this.value)">
                                                                            <option value="">경상,대구,울산 ALL</option>
                                                                                   <option value='대구중앙'>대구중앙</option>
                                                                                   <option value='대구동성로'>대구동성로</option>
                                                                                   <option value='대구수성구'>대구수성구</option>
                                                                                   <option value='창원'>창원</option>
                                                                                   <option value='대구경북대'>대구경북대</option>
                                                                                   <option value='울산대'>울산대</option>
                                                                                   <option value='울산시청'>울산시청</option>
                                                                                   <option value='구미'>구미</option>
                                                                                   <option value='포항'>포항</option>
                                                                                   <option value='수성'>수성</option>
                                                                                   <option value='성서계대'>성서계대</option>
                                                                                   <option value='경산영남대'>경산영남대</option>
                                                        
                                </select>
                                                        <select id="regionSubLayer대전" style="margin-left:10px;" class="off" onchange="regionSubSelect(this.value)">
                                                                            <option value="">대전,충청 ALL</option>
                                                                                   <option value='둔산'>둔산</option>
                                                                                   <option value='대전역'>대전역</option>
                                                                                   <option value='유성구'>유성구</option>
                                                                                   <option value='청주'>청주</option>
                                                                                   <option value='천안'>천안</option>
                                                                                   <option value='은행'>은행</option>
                                                                                   <option value='세종시'>세종시</option>
                                                                                   <option value='홍성'>홍성</option>
                                                        
                                </select>
                                
                                <select id="regionSubLayer강원" style="margin-left:10px;" class="off" onchange="regionSubSelect(this.value)">
                                                                            <option value="">강원 ALL</option>
                                                                            <option value='강릉'>강릉</option>
                                                                            <option value='춘천'>춘천</option>
                                                                            <option value='원주'>원주</option>
			
                                                        
                                </select>
                                                        <select id="regionSubLayer광주" style="margin-left:10px;" class="off" onchange="regionSubSelect(this.value)">
                                                                            <option value="">광주,전라,제주 ALL</option>
                                                                                    <option value='전남대'>전남대</option>
                                                                                    <option value='전주'>전주</option>
                                                                                    <option value='상무지구'>상무지구</option>
                                                                                    <option value='제주'>제주</option>
                                                                                    <option value='동명'>동명</option>
                                                                                    <option value='첨단지구'>첨단지구</option>
                                                                                    <option value='군산'>군산</option>
			
                                                        
                                </select>
                                                        
                                                
                            
                            <script>
                                function regionSelect(val)
                                {								
                                    $('#regionSub').find('.on').addClass('off');
                                    $('#regionSubLayer'+val).removeClass('off');
                                    $('#regionSubLayer'+val).addClass('on');
                                    $('#region').val($('#regionSubLayer'+val+' option:first').val());
                                    $('#regionMain').val(val);								
                                    $('#regionSubLayer'+val).prop("selectedIndex", 0);
                                }
    
                                function regionSubSelect(val)
                                {
                                     $('#region').val(val);
                                }
                            </script>
                        </div>
                    </div>
                    <div class="inbox">
                        <div class="left">요일/시간</div>
                        <div class="right">
                            <div class="days">
                                <ul id="days">
                                    <li day="2" class="">월</li>
                                    <li day="3" class="">화</li>
                                    <li day="4" class="">수</li>
                                    <li day="5" class="">목</li>
                                    <li day="6" class="">금</li>
                                    <li day="7" class="">토</li>
                                    <li day="1" class="">일</li>
                                </ul>
                                <ul id="times">
                                    <li time="1" style="margin-left:15px;" class="">오전 (06:00~12:00)</li>
                                    <li time="2" class="">오후 (12:00~18:00)</li>
                                    <li time="3" class="">저녁 (18:00~24:00)</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="inbox">
                        <div class="left">수업형태</div>
                        <div class="right">
                            <div class="days">
                                <ul id="tTypes">
                                    <li ttype="0" class="">1:1수업</li>
                                    <li ttype="1" class="">그룹</li>
                                </ul>
                            </div>						
                            <div class="filter_button" id="searchList">
                                	내게 맞는 수업 보기
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			

            <script>
                $('#searchList').click(function(){
                    var day = "";
                    var time = "";
                    var tType = "";
                    $("#days").children().each(function(){
                        if($(this).hasClass('on')){						
                            if(day=='')
                            {
                                day = $(this).attr("day");
                            }
                            else
                            {
                                day = day + "," + $(this).attr("day");
                            }
                        }
                    });
    
                    $("#times").children().each(function(){
                        if($(this).hasClass('on')){						
                            if(time=='')
                            {
                                time = $(this).attr("time");
                            }
                            else
                            {
                                time = time + "," + $(this).attr("time");
                            }
                        }
                    });
    
                    $("#tTypes").children().each(function(){
                        if($(this).hasClass('on')){						
                            if(tType=='')
                            {
                                tType = $(this).attr("tType");
                            }
                            else
                            {
                                tType = tType + "," + $(this).attr("tType");
                            }
                        }
                    });
                    
                    
                    regionSub = $("#region").val();
                    regionMain = $("#regionMain").val();
                    cateMain = "${sInfo.cateMain}";
                    cateSub = "${sInfo.cateSub}";
                                    
                    sValue = "${sInfo.sValue}";
                    /* code = "";
                    org = ""; */
                    url = "detailSearch.do";
    
                    location.href = url+"?cateMain="+cateMain+"&cateSub="+cateSub+"&sValue="+sValue+"&day="+day+"&time="+time+"&tType="+tType+"&regionSub="+regionSub+"&regionMain="+regionMain;
                     
                });
                
    
                function menuView(val){
                    $('#menu_back_fixed').show();
                    var va = val;
                    str = '#sub'+val;
                    menu = "#menu"+val;
                
                    $('.cates').hide();
    
                    if($('#sub9').css('display')!='none'){
                        console.log('회색 보임');
                    }else{
                        console.log('회색 안보임');
                        $('.filter_head').css('margin-top','216px');
                    }
                    $(str).show();
                }

                function menuView2() {
                   
                    if($('#sub9').css('display')!='none'){
                       
                    }else{
                        
                        $('.filter_head').css('margin-top','0px');
                    }


                }
                

    
                function filterView(){
                    if($('#sub9').css('display')!='block'){
                        $('.filter_head').css('margin-top','216px');
                        $('#menu9').css('background-color','#f1f1f1').css('border-bottom','solid 1px #f1f1f1');
                        $('.catesub_list').hide();
                        $('#sub9').show();
                        $('#filterImage').hide();
                        $('.cate').removeClass('cate2').addClass('cate3');
                        $('#menu_back_fixed').hide();
    
                        $('#filterCloseImage').show();
                      

                    }else{
                        $('#sub9').hide();
                        $('#menu9').css('background-color','#fff').css('border-bottom','solid 1px #c9c9c9'); 
                        $('.catesub_list.cates').hide();
                        $('#filterImage').show();
                        $('#filterCloseImage').hide();
                        $('.filter_head').css('margin-top','0px');
                    }	 
                }
    
                $(function(){
                    if($('#sub9').css('display')=='block'){
                        $('#menu9').css('background-color','#f1f1f1').css('border-bottom','solid 1px #f1f1f1');
                        $('#filterImage').hide();
                        $('#filterCloseImage').show();
                    }
    
                    $('#menu_back_fixed').mouseenter(function(){
                    
                        $('.cates').hide();
                        $('.cate').removeClass('cate2').addClass('cate3');
                        $('#menu_back_fixed').hide();
                    });
                     
                    $('li','.days').click(function(){
                        if($(this).hasClass('on')){
                            $(this).removeClass('on');
                        }else{
                            $(this).addClass('on');
                        }
                    });
                    $('.option','.inbox').click(function(){
                        if($(this).hasClass('on')){
                            $(this).removeClass('on');
                        }else{
                            $(this).addClass('on');
                        }
                    });
                });
                
            </script>
            
            <div class="filter_head" style="margin-top: 216px;">
                <div class="num_class">
                    ${ pi.listCount }개의 수업
                </div>
                <!--select name="fluit" onchange="go(this.value)">				
                    <option value="5" >추천도순</option>
                    <option value="3" >낮은 가격순</option>
                    <option value="2" >최신순</option>
                </select-->
                <script>
                    function go(val)
                    {
                        cateMain = "";
                        cateSub = "";
                        region = "";
                        query = "영어회화";
                        code = "";
                        org = "";
                        url = "/Home/Search/";
    
                        location.href = url+"?cateMain="+cateMain+"&cateSub="+cateSub+"&query="+query+"&code="+code+"&region="+region+"&orderIdx="+val+"&org="+org;
                    }
                </script>
            </div>
            
            <div class="cont2_box" id="top-space">	
                <div class="cont2">				
                  
                  <c:forEach var="s" items="${ sList }">
                  <div class="cont2_class">
                    <a href="lessonDetail.do?lNo=${ s.lNo }" target="_blank">
                        <div class="img" style="background-image: url('resources/lessonImg/${s.cName}');">
                                                                         
                                                    <div class="d_day">${ s.tUserNumber }명 참여</div>
                                                    <!--a class="heart2"></a-->
                        </div>
                        <div class="profile_box">
                            <div class="profile" style="background-image: url('resources/lessonImg/${s.uCName}');">
                            </div>
                            <div class="name">${ s.userName }</div>
                            <div class="nick">${ s.tNick }</div>
                        </div>
                        <div class="title">
                            ${ s.lTitle}					</div>
                        <div class="price">
                                                    <div class="price2">
                                <span>￦<span><span>${ s.price }<span>
                            </span></span></span></span></div>
                                                </div>
                        <div class="info">
                            <div class="info2">
                                  <div class="star">
                                
                                  <span class='star-rating'>
									<span style ="width:${ s.totalReviewRation * 20}%"></span>
								</span>
                                </div>
                                <div class="review" style="margin-right:15px;">
                                    (${s.totalReviewNumber})
                                </div>
                                                            
                                <div class="location">
                                    ${s.lRegionSub }						</div>
                            </div>
                        </div>
                        </a>
                    </div>
                      </c:forEach>                  
                      
                </div>
            </div>
            
        
            <!-- 4. 검색 옵션에 따라 어떤 매핑을 해야할지 정해주는 옵션 -->
            <c:choose>
            	<c:when test="${ sInfo.sType == 'Search' }">
            		<c:set var="loc" value="search.do"/> 
            	</c:when>
            	<c:when test="${ sInfo.sType == 'cateMain' }">
            		<c:set var="loc" value="cateMain.do"/> 
            	</c:when>
            	<c:when test="${ sInfo.sType == 'cateSub' }">
            		<c:set var="loc" value="cateSub.do"/> 
            	</c:when>
            	<c:when test="${ sInfo.sType == 'searchDetail' }">
            		<c:set var="loc" value="detailSearch.do"/> 
            	</c:when>
            </c:choose>
               
			  
            <div class="page">
            <!--?[이전]?-->
			<c:if test="${pi.currentPage <=10}">
	
			</c:if>
			
			<c:if test="${ pi.currentPage >10}">
			
			<c:url var="blistBack" value="${loc}">	
			<c:param name="currentPage" value="${ pi.startPage - 1}"/>
			<c:param name="sType" value="${sInfo.sType}"/>
			<c:param name="sValue" value="${sInfo.sValue}"/>
			<c:param name="cateMain" value="${sInfo.cateMain}"/>
			<c:param name="cateSub" value="${sInfo.cateSub}"/>
			<c:param name="regionMain" value="${sInfo.regionMain}"/>
			<c:param name="regionSub" value="${sInfo.regionSub}"/>
			<c:param name="sDay" value="${sInfo.sDay}"/>
			<c:param name="sTime" value="${sInfo.sTime}"/>
			<c:param name="tType" value="${sInfo.tType}"/>
			<c:param name="day" value="${sInfo.day}"/>
			<c:param name="time" value="${sInfo.time}"/>
			<c:param name="cCList" value="${ cCList}"></c:param>
			
			</c:url>
			
			<a href="${blistBack}">
			<img src="resources/baesung/images/paging_pop_first.gif" border="0">
			&nbsp; 이전 &nbsp;|
			</a>
			
			</c:if>
			  
			<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
			
			<!--?현재?페이지와?같은?페이지?번호?스타일?변경?-->
			<c:if test="${ p eq pi.currentPage }">
			<a href="#" class="list border"><b>${p}</b></a>
			</c:if>
			
			<!--?현재?페이지와?다른?페이지?출력?-->
			<c:if test="${ p ne pi.currentPage }">
			
			<c:url var="blistCheck" value="${ loc }">
			
			<c:param name="currentPage" value="${ p }"/>
			<c:param name="sType" value="${sInfo.sType}"/>
			<c:param name="sValue" value="${sInfo.sValue}"/>
			<c:param name="cateMain" value="${sInfo.cateMain}"/>
			<c:param name="cateSub" value="${sInfo.cateSub}"/>
			<c:param name="regionMain" value="${sInfo.regionMain}"/>
			<c:param name="regionSub" value="${sInfo.regionSub}"/>
			<c:param name="sDay" value="${sInfo.sDay}"/>
			<c:param name="sTime" value="${sInfo.sTime}"/>
			<c:param name="tType" value="${sInfo.tType}"/>
			<c:param name="day" value="${sInfo.day}"/>
			<c:param name="time" value="${sInfo.time}"/>
			</c:url>
			
			<a href="${ blistCheck}">${p}</a>
			</c:if>
			</c:forEach>
			  
			<!--?[다음]?-->
			<c:if test="${pi.maxPage- pi.startPage < 10}">
		
			</c:if>
			
			<c:if test="${pi.maxPage- pi.startPage >= 10}">
			
			<c:url var="blistEnd" value="${loc}">		
			<c:param name="currentPage" value="${pi.endPage+10}"/>
			<c:param name="sType" value="${sInfo.sType}"/>
			<c:param name="sValue" value="${sInfo.sValue}"/>
			<c:param name="cateMain" value="${sInfo.cateMain}"/>
			<c:param name="cateSub" value="${sInfo.cateSub}"/>
			<c:param name="regionMain" value="${sInfo.regionMain}"/>
			<c:param name="regionSub" value="${sInfo.regionSub}"/>
			<c:param name="sDay" value="${sInfo.sDay}"/>
			<c:param name="sTime" value="${sInfo.sTime}"/>
			<c:param name="tType" value="${sInfo.tType}"/>
			<c:param name="day" value="${sInfo.day}"/>
			<c:param name="time" value="${sInfo.time}"/>
			</c:url>
			
			<a href="${blistEnd}">| &nbsp;다음&nbsp;&nbsp;
                <img src="resources/baesung/images/paging_pop_last.gif" border="0">
                </a>
			</c:if>
			</div>  
         
                </div>
            <div style="padding-top:50px"></div>
        </div>
    
    </div>
    <!-- //CONTAINER -->
   
    <!-- Channel Plugin Scripts -->
    <script>
    var scrollTop=0;
    $('#custom-button-trigger').click(function(){
        scrollTop= $(window).scrollTop();
        $('#custom-button-1').click();
    });
     (function() {
       var w = window;
       if (w.ChannelIO) {
         return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
       }
       var d = window.document;
       var ch = function() {
         ch.c(arguments);
       };
       ch.q = [];
       ch.c = function(args) {
         ch.q.push(args);
       };
       w.ChannelIO = ch;
       function l() {
         if (w.ChannelIOInitialized) {
           return;
         }
         w.ChannelIOInitialized = true;
         var s = document.createElement('script');
         s.type = 'text/javascript';
         s.async = true;
         s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
         s.charset = 'UTF-8';
         var x = document.getElementsByTagName('script')[0];
         x.parentNode.insertBefore(s, x);
       }
       if (document.readyState === 'complete') {
         l();
       } else if (window.attachEvent) {
         window.attachEvent('onload', l);
       } else {
         window.addEventListener('DOMContentLoaded', l, false);
         window.addEventListener('load', l, false);
       }
     })();
      ChannelIO('boot', {
       "pluginKey": "8fc98895-06a5-402d-8740-1cb9261ebc91",
        "customLauncherSelector": "#custom-button-1",
        "hideDefaultLauncher": true,
           "userId": "whqotjd@naver.com", //fill with user id
           "profile": {
             "name": "조배성", //fill with user name
             "mobileNumber": "01091414811", //fill with user phone number
             "CUSTOM_VALUE_1": "VALUE_1", //any other custom meta data
             "CUSTOM_VALUE_2": "VALUE_2"
           }
     });
      ChannelIO('onHide', function() {
        $(window).scrollTop(scrollTop);
    });
    </script>
    <!-- End Channel Plugin -->	
    </div>
    <script type="text/javascript">
    (function(w, d, a){
        w.__beusablerumclient__ = {
            load : function(src){
                var b = d.createElement("script");
                b.src = src; b.async=true; b.type = "text/javascript";
                d.getElementsByTagName("head")[0].appendChild(b);
            }
        };w.__beusablerumclient__.load(a);
    })(window, document, '//rum.beusable.net/script/b180108e172946u143/843497716d');
    </script>
    
    <script type="text/javascript">
    
    
   $(function(){
	 
		$(".cMain").each(function(index,item){
		
			if('${sInfo.cateMain}' != null){
				
			if($(item).text()  == '${sInfo.cateMain}'){
	
				$(item).css('font-weight','bold');
			}
			
		}
			
		})
		
		$(".cSub").each(function(index,item){
		
			if('${sInfo.cateSub}' != null){
				
			if($(item).text()  == '${sInfo.cateSub}'){
	
				$(item).css('color','rgb(255, 0, 90)');
			}
			
		}
			
		})
		
		$("#MainIndex option").each(function(index,item){
			
			if($(item).val() == ''){
				 $(item).text('지역ALL(0)');		 
			 }else{
				 $(item).text($(item).val()  + '(0)');
			 }
			
			// 선택되었던 것 다시 선택해주기 
			
			if($(item).val() == '${sInfo.regionMain}'){
				
                $('#regionSubLayer'+$(item).val()).removeClass('off');
                $('#regionSubLayer'+$(item).val()).addClass('on');
             							
                $(item).prop("selected", true);
			}
			

			 //alert($(item).val());		
			 <c:forEach items="${cCList}" var="cCList">
			
			//alert('${cCList.location}');
			if('${cCList.lType}' != 'RegionSub'){
			
			 if($(item).val() == '${ fn:substring(cCList.location,0,2)}'){
					 
				 if($(item).val() == ''){

					 $(item).text('지역ALL('+'${cCList.count}' + ')');		 
				 }else{
					 $(item).text($(item).val()  + '('+'${cCList.count}' + ')');
				 }		 
			}

			} 
		
	  		</c:forEach> 	
	  		
		})
	
		
	
		$('[id*="regionSubLayer"] option').each(function(index,item){
			
			 //alert($(item).val());
			 
			if($(item).val() == ''){
				 
			 }else{
				 $(item).text($(item).val()  + '(0)');
			 }	
			 
			if($(item).val() == '${sInfo.regionSub}'){
				$(item).prop("selected", true);
			}
			 
			 <c:forEach items="${cCList}" var="cCList">
			 
			//alert('${cCList.location}');
			if('${cCList.lType}' != 'RegionMain'){
			 if($(item).val() == '${ cCList.location}'){
				
 				if($(item).val() == ''){
					 
				 }else{
					 $(item).text($(item).val()  + '('+'${cCList.count}' + ')');
				 }	
	 	
			}
			 
			}
	  		</c:forEach> 	 
		})
		
		var days = '${sInfo.day}';	
		if(days != ''){
		var daysArr = days.split(',');
		
		 $("#days").children().each(function(element2, index2){			
					
			 daysArr.forEach(function(element, index) {
				 
				   if($(index2).attr('day') == element ){	
    	               
					   $(index2).attr('class','on');
	                  
		             } });  });}
		
		var time = '${sInfo.time}';
		if(time != ''){
			var timeArr = time.split(',');
			
			 $("#times").children().each(function(element2, index2){			
						
				 timeArr.forEach(function(element, index) {
					 
					   if($(index2).attr('time') == element ){	
	    	               
						   $(index2).attr('class','on');
		                  
			             } });  });}
		
		var tType = '${sInfo.tType}';
		if(tType != ''){
			var tTypeArr = tType.split(',');
			
			 $("#tTypes").children().each(function(element2, index2){			
						
				 tTypeArr.forEach(function(element, index) {
					 
					   if($(index2).attr('ttype') == element ){	
	    	               
						   $(index2).attr('class','on');
		                  
			             } });  });}
		
		
		
		
		 
   });
    
    </script>
    
    
    
    
    
    
    
    
    
    
    <div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div>
    <div><iframe name="fb_xdm_frame_https" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=f3df02679da1c2c&amp;origin=https%3A%2F%2Ftaling.me" style="border: none;"></iframe></div></div></div><div id="ch-plugin"><div id="ch-plugin-script" style="display:none" class="ch-messenger-hidden"><iframe id="ch-plugin-script-iframe" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;"></iframe></div><div id="ch-plugin-core"><style data-styled="" data-styled-version="4.3.2"></style><style data-styled="" data-styled-version="4.3.2"></style><div hidden="" class="sc-erNlkL bRmDYI sc-RbTVP hrWefY"><div class="sc-eNNmBn cXBieY"><div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div><div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div><div class="sc-fkyLDJ epSaPl">(알 수 없음)</div><div class="sc-iCwjlJ hRSOFL">9:00am</div></div><div class="sc-eopZyb bYeAnX"><div class="sc-jRuhRL coGTKb"><span class=""></span></div></div></div></div><div hidden="" class="sc-kEmuub cCdpiZ sc-RbTVP hrWefY"><div class="sc-eNNmBn cXBieY"><div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div><div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div><div class="sc-fkyLDJ epSaPl">(알 수 없음)</div><div class="sc-iCwjlJ hRSOFL">9:00am</div></div><div class="sc-eopZyb bYeAnX"><div class="sc-jRuhRL coGTKb"><span class=""></span></div></div></div></div><style data-styled="" data-styled-version="4.3.2"></style><div class="sc-bZQynM bcTMnS"></div><div hidden="" class="sc-htpNat cZUkcW"><div class="sc-bxivhb fomTXD"><div class="textLauncherContent sc-ifAKCX JIEAE"></div><div class="textLauncherIcon sc-EHOje dWEZNG"><div hidden="" class="sc-bwzfXH sc-htoDjs jiXddj">0</div></div></div></div></div></div><style data-styled="" data-styled-version="4.3.2"></style></body>
</html>