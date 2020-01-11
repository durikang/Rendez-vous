<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<script src="https://kit.fontawesome.com/8af8965544.js"></script>
<script
	src="https://fonts.googleapis.com/css?family=Montserrat&display=swap"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
	rel="stylesheet">
</head>
<style>


.header {
	display: flex;
	justify-content: flex-end;
	align-items: center;
	padding: 0 10%;
}

.logo {
	width: 100px;
	height: 100px;
	cursor: pointer;
	margin-right: auto;
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
	font-family: "Montserrat", sans-serif;
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
    
    .container	{
		font-family: 'Do Hyeon', sans-serif;
	}
    
    .board_box {
    	width:100%;
    	height:100vh;
    }

    .wrapper {
    	float:left;
    	width:15%;
    	height:100vh;
        display: flex;
        position: relative;
    }

</style>

<body class="menu_body">

	<c:if test="${ !empty msg}">
		<script>
			alert("${msg}");
		</script>
		<c:remove var="msg"/>
	</c:if>

	<c:set var="contextPath"
		value="${ pageContext.servletContext.contextPath }"
		scope="application" />
	<header class="header">
		
		<nav>
			<ul class="nav_links">
				<li><a href="home.do">랑데뷰 홈으로</a></li>
				<li>|</li>
				<li>${loginUser.user_name }님 환영합니다</li>
				<li>|</li>
				<li><a href="#">관리자 정보 수정</a></li>
			</ul>
		</nav>
	</header>
	<header class="header">
		<img class="logo"
			src="${ contextPath }/resources/managerResources/Img/logo.png"
			alt="logo">
			
		<ul class="nav_links">
			
			<li><a href="manageHo.do">홈페이지 관리</a></li>
			<li><a href="mn.do">회원 / 튜터 관리</a></li>
			<li><a href="mnRequest.do">튜터 신청 관리</a></li>
			<li><a href="#">통계</a></li>
		</ul>

	</header>

	
	<script>
		$(".logo").on("click", function() {
			location.href = 'managerHome.do';
		});
	</script>
</body>
</html>