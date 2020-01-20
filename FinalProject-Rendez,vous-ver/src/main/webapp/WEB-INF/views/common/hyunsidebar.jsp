<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
    <title>내가 등록 한 재능</title>   
    
    <style type="text/css">
    #left_nav {
    padding-top: 55px;
    width: 185px;
    float: left;
}

.left_subject {
    width: 175px;
    height: 43px;
    background: url(/resources/images/common/back_left.jpg);
    padding: 20px 0 0 10px;
    font-size: 22px;
    color: #333333;
    letter-spacing: -1px;
}

#left_nav>ul {
    border-top: 2px solid #283444;
    padding-bottom: 28px;
}

#left_nav>ul>li {
    padding-left: 10px;
    height: 37px;
    border-bottom: 1px solid #e5e5e5;
    line-height: 37px;
}


* {
    margin: 0;
    padding: 0;
    font-family: 'NanumBarunGothic', 'Nanum Gothic', Dotum, sans-serif;
    font-size: 13px;
    color: #6d6e72;
    text-decoration: none;
}
user agent stylesheet
div {
    display: block;
}


    
    </style>

	
</head>
<body>
	<div id="left_nav">
	<div class="left_subject">튜터메뉴</div>
	<ul>
	
		 <!-- style="color: rgb(40, 52, 68); -->
		
		<li><a href="tutorMain.do">튜터메인</a></li>
		<li><a href="lessonManage.do">수업 관리</a></li>
		<li><a href="lessonInsert.do">수업등록하기</a></li>
		
	</ul>
	

</div>
	
</body>
</html>