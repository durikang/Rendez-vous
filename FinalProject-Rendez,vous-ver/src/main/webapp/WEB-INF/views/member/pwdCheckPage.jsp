<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
   <script> 
      $(function() { 
         $("#postcodify_search_button").postcodifyPopUp(); 
      }); 
   </script>
<title>Insert title here</title>
<style>
	#check{
		margin:auto;
		text-align: center; 
		width: 70%;
		margin-top : 30%;
	}
	
</style>
</head>
<body>
		<c:if test="${ !empty msg }">
			<script>
	        	alert("비밀번호가 일치하지 않습니다.");
			</script>
		</c:if>

<form action="pwdCheck.do" method="post">
		<div id="check">
			<label>Password</label>
			<input type="hidden" id="id" name="user_id" value="${ loginUser.user_id }">
			<input class="w3-input" id="pwd" name="user_pwd" type="password" >
			<button type="submit" id="checkBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호 확인</button>
		</div>
</form>		

</body>
</html>