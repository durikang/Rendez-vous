<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    .sidebar {
        width: 100%;
        height:70%;
        background: #7e7e7e;
    	border-radius: 10px;
    }

    .wrapper .sidebar h2 {
        color: #fff;
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

    .wrapper .sidebar ul li:hover {
        background: #525252;
    }

    .wrapper .sidebar ul li:hover a{
        color: #fff;
        text-decoration:none;
    }
    
    .content_area {
    	float:left;
    	width:85%;
    	height:100vh;
    }
    
    .board_area {
    	width:80%;
    	height:100vh;
    	margin:auto;
    	margin-top:5%;
    	text-align:center;
    }
	#boardTable {
		width:100%;
		margin:auto;
		margin-top:5%;
		border-collapse: collapse;
		box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
	}
	
	#boardTable thead tr {
		background-color: #c9c0b1;
		color:white;
		font-weight:bold;
	}
	
	
	#boardTable th, #boardTable td {
		text-align:center;
		padding: 12px 15px;
	}
	
	#boardTable tbody tr {
		border-bottom:1px solid #dddddd;
	}
	
	#boardTable tbody tr:nth-of-type(even) {
		background-color: #f3f3f3;
	}
	
	#boardTable tbody tr:last-of-type {
		border-bottom : 2px solid #c9c0b1;
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
	  	float:right;
	  	margin-bottom:1%;
	  	width:80px;
	  	background:#c9c0b1;
	  }



</style>
</head>
<body>
	<div class="wrapper">
	        <nav class="sidebar">
	            <h2>어드민 홈</h2>
	            <ul>
	                <li><a href="managerHome.do"><i class="fas fa-home" style="color:#c9c0b1;"></i>Home</a></li>
	                <li><a href="support_qna.do"><i class="fas fa-question-circle m-auto" style="color:#c9c0b1;"></i>Q & A</a></li>
	                <c:if test="${ !empty loginUser }">
	                	<li><a href="support_list.do"><i class="fas fa-list-alt m-auto" style="color:#c9c0b1;"></i>문의 내역</a></li>
	                </c:if>
	                <c:if test="${ empty loginUser }">
	                	<li><i class="fas fa-list-alt m-auto" style="color:#c9c0b1;"></i> 문의 내역(로그인이 필요합니다.)</li>
	                </c:if>
	            </ul>
	        </nav>
	    </div>
</body>
</html>