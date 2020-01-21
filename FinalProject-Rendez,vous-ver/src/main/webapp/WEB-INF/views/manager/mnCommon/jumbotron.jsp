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
   .backLogo{
		background: center / contain no-repeat url("${contextPath}/resources/managerResources/Img/adminJumbotron.jpg");
		background-size: cover;
		color:white;
		margin: 0 5px;
	}
</style>
</head>
<body>
<div class="jumbotron backLogo" style="width: 100%; height: 150px;">
	<c:if test="${ pageName eq 'adminHome' }">
		<h4 align="center">관리자 홈</h4>
  	</c:if>
	<c:if test="${ pageName eq 'managerHome' }">
		<h4 align="center">홈페이지 관리</h4>
  	</c:if>
	<c:if test="${ pageName eq 'memNTut' }">
		<h4 align="center">회원/튜터 관리</h4>
  	</c:if>
	<c:if test="${ pageName eq 'request' }">
		<h4 align="center">튜터 신청 관리</h4>
  	</c:if>
	<c:if test="${ pageName eq 'static' }">
		<h4 align="center">통계</h4>
  	</c:if>
</div>
  

</body>
</html>