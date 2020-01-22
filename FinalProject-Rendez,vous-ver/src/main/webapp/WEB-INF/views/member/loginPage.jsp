<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/8af8965544.js" crossorigin="anonymous"></script>
</head>
<style>
body {
        margin: 0;
        padding: 0;
        background-color: white;
        background-size: cover;
    }
    #wrapper {
    	width:100%;
    	height:100vh;
    }
    #loginbox {
        width:280px;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        position: absolute;
        color: lightgray;
    }
    #loginbox h1 {
        font-size: 40px;
        border-bottom: 1px solid lightgray;
        margin-bottom: 50px;
        padding: 13px 0;
        text-align: center;
    }
    #logintext {
        width:100%;
        overflow: hidden;
        font-size: 20px;
        padding: 8px 0;
        margin: 8px 0;
    }
    #logintext i {
        width: 26px;
        float: left;
        text-align: center;
    }
    #logintext input {
        border: none;
        outline: none;
        background: none;
        color: Gray;
        font-size: 16px;
        width: 80%;
        float: left;
        margin: 0 10px;
    }
    #btn, #btnLogin {
        width:45%;
        float: left;
        background: none;
        border: 2px solid lightgray;
        color: gray;
        padding: 12px 0;
        margin: 0 2%;
        cursor: pointer;
    }
</style>
<body>
<%-- 		<c:if test="${ !empty msg }">
		<script>
        	alert("로그인 실패!");
        	opener.parent.location.replace("loginPage.do");
		</script>
		</c:if> --%>

<c:import url="../common/menubar.jsp"/>
    <div id="wrapper">
    	<div id="loginbox">    
    	<c:if test="${ empty sessionScope.loginUser }">
    		<form action="login.do" method="post">
    			<table id="loginTable" style="test-align:center;">
			        <h1>LOGIN</h1>
			        <div id="logintext">
			            <i class="fas fa-user"></i>
			            <input name="id" id="text-area" type="text" placeholder="Email" >
			        </div>
			        <div id="logintext">
			            <i class="fas fa-lock"></i>
			            <input name="pwd" id="text-area" type="password" placeholder="Password">
			        </div>			        
			        <input id="btnLogin" type="submit" value="Login">
			        <c:url var="join" value="join.do"/>
			        <input id="btn" type="button" value="Sign Up" onclick="location.href='${join}'">
				</table>
			</form>
		</c:if>
    </div>
    </div>
    <c:import url="../common/footbar.jsp"/>
</body>
</html>