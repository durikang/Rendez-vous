<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>


<c:forEach var="li" items="${ li }">
	<div style="width: 100px; height: 100px; background: green;">
		<h3>${li.lTitle }</h3>
		<input type="text" value="${li.lNo }">
		<button onclick="goDetail(this)">상세페이지로</button>
	</div>
	<br>
	<br>


</c:forEach>

	<script type="text/javascript">
	function goDetail(value){
		
		var lNo = $(value).parent().children().eq(1).val();
		location.href='lessonDetail.do?lNo='+lNo;
		
	}
	
	</script>











</body>
</html>