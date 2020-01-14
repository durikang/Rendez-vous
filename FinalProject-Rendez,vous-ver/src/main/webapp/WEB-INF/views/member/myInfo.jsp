<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
	<h1 align="center">회원 정보 수정</h1>
	
		<c:if test="${ !empty msg }">
		<script>
        	alert("회원 탈퇴 완료");
        	opener.parent.location.replace("logout.do");
        	self.close();
		</script>
		</c:if>
	
	<div class="text-center">
		<c:url var="mdelete" value="mdelete.do">
			<c:param name="user_id" value="${ loginUser.user_id }"/>
		</c:url>
		<button type="button" onclick="location.href='${ mdelete }'">탈퇴하기</button>
    </div>
</body>
</html>