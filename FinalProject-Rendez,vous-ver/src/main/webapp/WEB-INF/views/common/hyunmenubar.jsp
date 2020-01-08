<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  
</head>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	<div class="alert alert-info"><h1 align="center">메뉴바 입니다.</h1></div>
	<button onclick="location.href='lessonDetail.do'">수업상세페이지로</button>
	<button onclick="location.href='lessonInsert.do'">수업인서트페이지로</button>
	<button onclick="location.href='tutorInsertPage.do'">튜터인서트페이지로</button>
	<button onclick="location.href='lessonManage.do'">수업 관리 페이지로</button>
	<button onclick="location.href='lessonAllListView.do'">모든 수업 리스트 페이지로</button>
	<br>
	<button onclick="location.href='lessonInsertOriginal.do'">수업인서트  원본으로</button>
	<button onclick="location.href='lessonManageOriginal.do'">수업관리  원본으로</button>
	<button onclick="location.href='test.do'">테스트페이지로</button>
	
</body>
</html>