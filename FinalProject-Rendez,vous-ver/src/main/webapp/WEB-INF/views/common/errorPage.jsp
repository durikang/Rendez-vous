<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="error-container" style="text-align:center;">
		<h1>Error</h1>
		<h2 style="color:red;">${ msg }</h2>

		<%-- <h2 style="color:red;"><%=request.getAttribute("javax.servlet.error.message") %></h2> --%>

		<button onclick="history.back();">돌아가기</button>
	</div>

</body>
</html>