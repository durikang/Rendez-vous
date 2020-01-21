<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.sidebar {
	width: 100%;
	height: 70%;
	border-radius: 10px;
	border-color: balck;
}

.wrapper .sidebar h2 {
	text-transform: uppercase;
	text-align: center;
	margin-top: 30px;
	margin-bottom: 30px;
}

.wrapper .sidebar ul li {
	padding: 15px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.05);
	border-top: 1px solid rgba(225, 225, 225, 0.05);
	color: #474747;
	display: block;
	font-family: 'Do Hyeon', sans-serif;
}

.wrapper .sidebar ul li a {
	color: #474747;
	display: block;
	font-family: 'Do Hyeon', sans-serif;
}

.wrapper .sidebar ul li a .fas {
	width: 25px;
}
/* 마우스 오버했을대 색상  */
.wrapper .sidebar ul li:hover a {
	/* background: #525252;
	color: #fff; */
	text-decoration: none;
	transition: all 0.3s;
}

/*  */
.content_area {
	float: left;
	width: 85%;
	height: 100vh;
}

.board_area {
	width: 80%;
	height: 100vh;
	margin: auto;
	margin-top: 5%;
	text-align: center;
}

#boardTable {
	width: 100%;
	margin: auto;
	margin-top: 5%;
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

#boardTable thead tr {
	background-color: #c9c0b1;
	color: white;
	font-weight: bold;
}

#boardTable th, #boardTable td {
	text-align: center;
	padding: 12px 15px;
}

#boardTable tbody tr {
	border-bottom: 1px solid #dddddd;
}

#boardTable tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

#boardTable tbody tr:last-of-type {
	border-bottom: 2px solid #c9c0b1;
}

#remoCon {
	position: fixed;
	width: 60px;
	height: 20px;
	right: 50px;
	bottom: 100px;
	display: none;
}

.write_btn {
	float: right;
	margin-bottom: 1%;
	width: 80px;
	background: #c9c0b1;
}

.wrapper {
	float: left;
	width: 15%;
	height: 100vh;
	display: flex;
	position: relative;
	margin: 0 125px;
}
</style>
<script>
/* background: #525252;
color: #fff; */
	$(function(){
		if( ${ pageName eq 'adminHome'} ){
			
			$("#adminHome").css("background","#525252");
			$("#adminHome a").css("color","#fff");
			
			
		}else if( ${ pageName eq 'managerHome'} ){
			$("#managerHome").css("background","#525252");
			$("#managerHome a").css("color","#fff");
			
		}else if( ${ pageName eq 'memNTut'} ){
			$("#memNTut").css("background","#525252");
			$("#memNTut a").css("color","#fff");
			
		}else if( ${ pageName eq 'request'} ){
			$("#request").css("background","#525252");
			$("#request a").css("color","#fff");
			
		}else if( ${ pageName eq 'static'} ){
			$("#static").css("background","#525252");
			$("#static a").css("color","#fff");
			
		}
	});
	

</script>
</head>
<body>

	<div class="wrapper">
		<nav class="sidebar ">
			<div class="border border-primaryo" style="padding: 10px;">
				<c:if test="${ pageName eq 'adminHome' }">
					<h5 align="center"><i class="fas fa-home" style="color: #c9c0b1;"></i> &nbsp;관리자 홈</h5>
				</c:if>
				<c:if test="${ pageName eq 'managerHome' }">
					<h5 align="center">홈페이지 관리</h5>
				</c:if>
				<c:if test="${ pageName eq 'memNTut' }">
					<h5 align="center">회원/튜터 관리</h5>
				</c:if>
				<c:if test="${ pageName eq 'request' }">
					<h5  align="center">튜터 신청 관리</h5>
				</c:if>
				<c:if test="${ pageName eq 'static' }">
					<h5  align="center">통계</h5>
				</c:if>
			</div>
			<ul>
				<li id="adminHome">
					<a href="adminHome.do?pageName=adminHome">
						<i class="fas fa-home" style="color: #c9c0b1;"></i>
						관리자 홈
					</a>
				</li>
				<li id="managerHome">
					<a href="manageHo.do?pageName=managerHome">
						<i class="fas fa-question-circle m-auto" style="color: #c9c0b1;"></i>
						홈페이지 관리
					</a>
				</li>
				<li id="memNTut">
					<a href="mn.do?pageName=memNTut"><i
						class="fas fa-list-alt m-auto" style="color: #c9c0b1;"></i>회원/튜터
						관리
					</a>
				</li>
				<li id="request">
					<a href="mnRequest.do?pageName=request&n=2">
						<i class="fas fa-list-alt m-auto" style="color: #c9c0b1;"></i>
						 튜터 신청 관리
					</a>
				</li>
				<li id="static">
					<a href="static.do?pageName=static">
						<i class="fas fa-chart-bar" style="color: #c9c0b1;"></i>
						 통계
					</a>
				</li>
			</ul>
		</nav>
	</div>
</body>
</html>