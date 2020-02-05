<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<script src="https://kit.fontawesome.com/8af8965544.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
    
</head>
<style>
.header {
	justify-content: flex-end;
	align-items: center;
	padding: 0 5%;
}

.header .menuFontSize {
	font-size: 17px;
}

.logo {
	width: 100px;
	height: 100px;
	cursor: pointer;
	margin:0 90px;
}

.nav_links {
	margin: 0 10px;
	list-style: none;
}

.nav_links li {
	display: inline-block;
	padding: 0px 20px;
}

.nav_links li a {
	transition: all 0.3s ease 0s;
	color: black;
	font-weight: bold;
	text-decoration: none;
}

.nav_links li, a {
	font-weight: 500;
	font-size: 16px;
	color: black;
}

.nav_links li a:hover {
	color: #c9c0b1;
}


.button {
	margin-left: 20px;
	padding: 9px 25px;
	background-color: #c9c0b1;
	border: none;
	border-radius: 50px;
	cursor: pointer;
	transition: all 0.3s ease 0s;
	color: black;
	font-weight: bold;
}

.button:hover {
	background-color: #ddd8cf;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	list-style: none;
	text-decoration: none;
}

.board_box {
	width: 100%;
	height: 100vh;
}

.menuInfo {
	float: right;
}

.login-info {
	float: right;
	
}
.login-info ul li,a{
	font-size: 12px;
	
}

#loading {
 width: 100%;   
 height: 100%;   
 top: 0px;
 left: 0px;
 position: fixed;   
 display: block;   
 opacity: 0.7;   
 background-color: #fff;   
 z-index: 99;   
 text-align: center; }  
 
#loading-image {   
 position: absolute;   
 top: 50%;   
 left: 50%;  
 z-index: 100; } 


 

</style>

<body>

<script>
$(function(){
	setTimeout(function() {
		$('#loading').hide();  	
	}, 100);
	
})
</script>
<div id="loading"><img id="loading-image" src="${contextPath }/resources/managerResources/Img/loading1.gif" alt="Loading..." /></div>

	<c:if test="${ !empty msg}">
		<c:set var ="m" value="${msg}"/>
		<script>
			alert("${m}");
		</script>
		<c:remove var="m" />
	</c:if>

	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	<header class="header">

		<nav class="login-info">
			<ul class="nav_links logInfo">
				<li><a href="home.do">랑데뷰 홈으로</a></li>
				<li>|</li>
				<li>${loginUser.user_name }님환영합니다</li>
				<li>|</li>
				<li><a href="logout.do">로그아웃</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<header class="header mainmenu">
		
		<img class="logo"
			src="${ contextPath }/resources/managerResources/Img/logo.png"
			alt="logo">
		<div class="container green borderXwidth">
		
		<ul class="nav_links d-flex justify-content-center">
			<li><a class="menuFontSize" href="manageHo.do?pageName=managerHome">홈페이지 관리</a></li>
			<li><a class="menuFontSize" href="mn.do?pageName=memNTut" onclick="pageSubmitFn('memNTut');">회원 관리</a></li>
			<li><a class="menuFontSize" href="mnRequest.do?pageName=request" onclick="pageSubmitFn('request');">튜터 신청 관리</a></li>
		</ul>
		</div>

	</header>

	<script>
		var newWindow;
		$(function() {
			$(".logo").on("click", function() {
				location.href = 'adminHome.do?pageName=adminHome';
			});
			
		});
		


		
	</script>
	
</body>
</html>