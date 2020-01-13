<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Rendez,vous</title>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap core CSS -->
<!-- <link href="support/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/support/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom fonts for this template -->
<link href="resources/support/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="resources/support/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">


<!-- Custom styles for this template -->
<link href="resources/support/css/landing-page.min.css" rel="stylesheet">

<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        list-style: none;
        text-decoration: none;
    }
    
    .container	{
		font-family: 'Do Hyeon', sans-serif;
	}
    
    .board_box {
    	width:100%;
    	height:100vh;
    }

    .wrapper {
    	float:left;
    	width:15%;
    	height:100vh;
        display: flex;
        position: relative;
    }

    .sidebar {
        width: 100%;
        height:100%;
        background: #7e7e7e;
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
	
	#boardTable thead tr td {
		border-right:1px solid white;
	}
	
	
	#boardTable th, #boardTable td {
		text-align:center;
		padding: 12px 15px;
	}
	
	#boardTable tbody tr {
		border-bottom:1px solid #dddddd;
	}
	
	#boardTable tbody tr td {
		border-right:1px solid #dddddd;
	}
	
	#boardTable tbody tr td button {
		margin: 0 5%;
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
	  	border-radius:10px;
	  	background:#c9c0b1;
	  }
	  
	  #cancel:hover {
	  	text-decoration:none;
	  	color:black;
	  	font-weight:bold;
	  }
	  
	  #submit:hover {
	  	font-weight:bold;
	  }
</style>
<body>
	<c:import url="../common/menubar.jsp"/>
    <!-- Masthead -->
    <header class="masthead text-white text-center">
		<div class="overlay" style="background-image: url('resources/support/img/mountains.jpg');"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<h1 class="mb-5">도움이 필요하신가요?</h1>
					<h2 class="mb-3">Rendez,vous의 고객센터는</h2>
					<h2 class="mb-5">언제나 최선을 다 하겠습니다.</h2>
				</div>
				<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
					<form action="support_search.do" method="POST">
						<div class="form-row">
							<div class="col-12 col-md-9 mb-2 mb-md-0">
								<input type="text" class="form-control form-control-lg" placeholder="고객 센터 내 검색">
							</div>
							<div class="col-12 col-md-3">
								<button type="submit" class="btn btn-block btn-lg" style="background: #c9c0b1; color: white;">검색</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</header>
    <div class="board_box">
	    <div class="wrapper">
	        <div class="sidebar">
	            <h2>q & a</h2>
	            <ul>
	                <li><a href="support_main.do"><i class="fas fa-home" style="color:#c9c0b1;"></i>Home</a></li>
	                <li><a href="support_qna.do"><i class="fas fa-question-circle m-auto" style="color:#c9c0b1;"></i>Q & A</a></li>
	                <li><a href="support_list.do"><i class="fas fa-list-alt m-auto" style="color:#c9c0b1;"></i>문의 내역</a></li>
	            </ul>
	        </div>
	    </div>
	    <div class="content_area">
	    	<div class="board_area">
	    		<h1>Q & A 수정</h1>
	    		<form action="qupdate.do" method="post" enctype="multipart/form-data">
	    			<input type="hidden" name="qNo" value="${ q.qNo }">
	    			<input type="hidden" name="currentPage" value="${ currentPage }">
					<table id="boardTable">
						<tr>
							<td height="100">제목</td>
							<td><input type="text" name="qTitle" size="80%" value="${q.qTitle}"></td>
						</tr>
						<tr>
							<td height="100">작성자</td>
							<%-- <td><input type="text" name="qWriter" value="${ loginUser.id }" size="80%" readonly></td> --%>
							<!-- 로그인 기능 완성되면 수정하기 -->
							<td><input type="text" name="qWriter" size="80%" value="${q.qWriter}" readonly></td>
						</tr>
						<tr>
							<td height="400">내용</td>
							<td>
								<textarea name="qContent"></textarea>
			   	                <script>
			                        $(document).ready(function(){
			                        	CKEDITOR.replace( 'qContent', {
			                        		filebrowserImageUploadUrl:'/image/upload',
			                        		height:300
			                        	});
			                        	
			                        	CKEDITOR.on('dialogDefinition', function(e){
			                        		var dialogName = e.data.name;
			                        		var dialogDefinition = e.data.definition;
			                        		
			                        		switch(dialogName) {
			                        			case 'image' :
			                        				//dialogDefinition.removeContents('info');
			                        				dialogDefinition.removeContents('Link');
			                        				dialogDefinition.removeContents('advanced');
			                        				break;
			                        		}
			                        	});
			                        });
				                </script>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input id="submit" type="submit" value="수정하기"> &nbsp;
								<button><a id="cancel" href="support_qna.do">취소하기</a></button>
							</td>
						</tr>
					</table>
				</form>
	    	</div>
	    </div>
    </div>
    <span id="remoCon">
		<a href="#" onClick="window.open('chatbot.do', '', 'width=500,height=700, left=1400, top=250')">
		<img src="resources/support/img/KakaoTalk.png" style="width:80px; height:80px;">
		</a>
	</span>
    <!-- Bootstrap core JavaScript -->
	<!-- <script src="support/vendor/jquery/jquery.min.js"></script>
  	<script src="support/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->

	<script src="<c:url value="/resources/support/vendor/jquery/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/support/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
	<script>
    $(document).scroll(function(){
	    var con = $("#remoCon");	
	    var position = $(window).scrollTop();	
	
	    if(position > 150){ 
	    	con.fadeIn(500); 
	    } else if(position < 150){ 
	    	con.fadeOut(500); 
	    }
	});	
	
    $("#remoCon").click(function(){
    	$("html, body").animate({scrollTop: 0}, 1000);
    });
  </script>

	<c:import url="../common/footbar.jsp"/>	
</body>
</html>