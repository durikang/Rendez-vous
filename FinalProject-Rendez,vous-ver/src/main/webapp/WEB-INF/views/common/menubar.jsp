
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
    <script src="https://kit.fontawesome.com/8af8965544.js" crossorigin="anonymous"></script>
    <script src="https://fonts.googleapis.com/css?family=Montserrat&display=swap"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
</head>
<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}
.search-box {
    margin: 0;
    padding: 0;
    background: #c9c0b1;
    height: 60px;
    border-radius: 40px;
    padding: 10px;
}
.search-box:hover > .search-text {
    width:300px;
    padding: 0 6px 0 15px;
    font-weight: bold;
}
.search-box:hover > .search-btn {
    background-color: white;
    text-decoration: none;
    color:#c9c0b1;
}
.search-btn {
    color: #c9c0b1;
    float: right;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background: black;
    display: flex;
    justify-content: center;
    text-decoration: none;
    align-items: center;
    transition: 0.4s;
}
.search-text {
    border: none;
    background: none;
    outline: none;
    float: left;
    padding: 0;
    color: black;
    font-size: 16px;
    transition: 0.4s;
    line-height: 40px;
    width: 0px;
}
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
    text-decoration:none;
}
.nav_links li,a {
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
</style>
<body class="menu_body">
	
	<c:if test="${ !empty msg}">
		<script>
			alert("${msg}");
		</script>
		<c:remove var="msg"/>
	</c:if>
	
    <header class="header">
<img class="logo" src="resources/common/img/logo1.png" alt="logo">
        <div class="search-box">
            <input class="search-text" type="text" id="search" placeholder="Search">
            <a class="search-btn">
                <i class="fas fa-search" onclick="search2()"></i>
            </a>
        </div>
        
        
         <a class="cta" href="hynnmenubar.do"><button class="button">튜터 등록</button></a>
        <nav>
            <ul class="nav_links">
                <li>|</li>

                <c:if test="${ empty sessionScope.loginUser }">
                	<li><a href="loginPage.do">로그인</a></li>
                </c:if>

                <c:if test="${ !empty sessionScope.loginUser }">
					<li><a href="mypage.do"><c:out value="${ loginUser.user_name }님 "/>마이페이지</a></li>
				</c:if>
				
				<%-- <c:if test="${ !empty sessionScope.loginUser and loginUser.user_type != 'A' }">
					<li><a href="mypage.do"><c:out value="${ loginUser.user_name }님 "/>마이페이지</a></li>
				</c:if> --%>
				
				<c:if test="${ !empty sessionScope.loginUser and loginUser.user_type == 'A' }">
					<li>|</li>
					<a href="managerHome.do">관리자 페이지</a>
				</c:if>
				
				<c:if test="${ !empty sessionScope.loginUser }">
					<li>|</li>
                	<li><a href="logout.do">로그아웃</a></li>
				</c:if>
            </ul>
        </nav>
    </header>
    <script>
    	$(".logo").on("click", function(){
    		location.href='home.do';
    	});
    	
        function search2(){
           var sValue = $("#search").val();
           if(sValue ==""){
              alert("검색어를 입력해주세요 !");
              return;
           }
           
           location.href = "search.do?sValue=" + sValue;
        }
    	
    	
    </script>
</body>

</html>