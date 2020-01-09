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
</head>
<style>
	* {
		margin:0;
		padding:0;
	}
	
	.container	{
		font-family: 'Do Hyeon', sans-serif;
	}
	
    .search_area {
        width: 100%;
        height:1414px;
        margin:auto;
    }

    .search_title {
        width: 80%;
        height:10%;
        margin:auto;
        margin-top: 5%;
        padding-bottom: 2%;
        border-bottom: 5px solid black;
    }

    .search_content {
        width: 100%;
        height:85%;
        margin-top: 5%;
        text-align: center;
    }
    
    .search_content h2 {
    	font-family: 'Do Hyeon', sans-serif;
    }
    
    .content_area {
		float: left;
		width: 100%;
		height:100%;
	}
	
	.board_area {
		width: 100%;
		height:60%;
		margin: auto;
		text-align: center;
	}
	
	.banner {
		height:40%
	}
	
	.board_area button {
		margin-right: 10%;
		margin-bottom: 2%;
	}
	
	#boardTable {
		width: 80%;
		margin: auto;
		border-collapse: collapse;
		box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
	}
	
	#boardTable thead tr {
		background-color: #c9c0b1;
		color: white;
		font-weight: bold;
	}
	
	#boardTable th, #boardTable td {
		text-align: center;
		padding: 8px 10px;
	}
	
	#boardTable tbody tr {
		border-bottom: 1px solid #dddddd;
	}
	
	#boardTable tbody tr:nth-of-type(even) {
		background-color: #f3f3f3;
	}
	
	#boardTable tbody tr:last-of-type {
		border-bottom: 2px solid #c9c0b1;
	}
	
	#remoCon {
		position: fixed;
		width: 60px;
		height: 20px;
		right: 50px;
		bottom: 100px;
		display: none;
	}
	  
	  #menu_btn {
	  	width:120px;
	  	height:50px;
	  	background-color: #c9c0b1;
	  	margin-top:2%;
	  	margin-bottom:1%;
	  }
</style>
<body>
<c:import url="../common/menubar.jsp"/>
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
								<input id="keyword" name="keyword" type="text" class="form-control form-control-lg" placeholder="고객 센터 내 검색">
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
    <div class="search_area">
        <div class="search_title">
            <h1>${keyword} 검색 결과</h1>
        </div>        
        <div class="search_content">
            <c:if test="${list.size() == 0}">
            	<h2>${keyword} 검색 결과가 없습니다</h2>
            </c:if>
            <c:if test="${list.size() > 0}">
            <div class="content_area">
            	<div class="board_area">
		    		<table id="boardTable">
		    		<thead>
		    		<tr>
						<th width="15%">번호</th>
						<th width="40%">제목</th>
						<th width="15%">작성자</th>
						<th width="20%">작성일</th>
						<th width="10%">답변 현황</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach var="q" items="${ list }">
					<tr>
						<td>${q.qNo}</td>
						<td>
						<c:if test="${ !empty loginUser }">
							<c:url var="qnaDetail" value="qnaDetail.do">
								<c:param name="qNo" value="${ q.qNo }"/>
								<c:param name="page" value="${ pi.currentPage }"/>
							</c:url>
							<a href="${ qnaDetail }">${ q.qTitle }</a>
						</c:if>
						<c:if test="${ empty loginUser }">
							${ q.qTitle }
						</c:if>
						</td>
						<td>${q.qWriter}</td>
						<td>${q.qDate}</td>
						<td>
							<c:if test='${ q.aStatus == "N" }'>
								X
							</c:if>
							<c:if test='${ q.aStatus == "Y" }'>
								O
							</c:if>
						</td>
					</tr>
					</c:forEach>
					<tr align="center" height="20">
					<td colspan="6">
						<!-- [이전] -->
						<c:if test="${ pi.currentPage <= 1 }">
							[이전] &nbsp;
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="before" value="support_search.do">
								<c:param name="keyword" value="${ keyword }"/>
								<c:param name="page" value="${ pi.currentPage - 1 }"/>
							</c:url>
							<a href="${ before }">[이전]</a>
						</c:if>					
						<!-- [페이지] -->
						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<font color="#c9c0b1" size="4"><b>[${ p }]</b></font>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="pagination" value="support_search.do">
									<c:param name="keyword" value="${ keyword }"/>
									<c:param name="page" value="${ p }"/>
								</c:url>
								<a href="${ pagination }">[${ p }]</a>
						 	</c:if>
						</c:forEach>
						<!-- [다음] -->
						<c:if test="${ pi.currentPage >= pi.maxPage }">
							[다음]
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="after" value="support_search.do">
								<c:param name="keyword" value="${ keyword }"/>
								<c:param name="page" value="${ pi.currentPage + 1 }"/>
							</c:url>
							<a href="${ after }">[다음]</a>
						</c:if>
					</td>
					</tr>
					</tbody>
		    	</table>
		    	</div>		    	
		    	<div class="banner">
			    	<button id="menu_btn" onclick="location.href='support_main.do'">메인으로</button>
		    		<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="resources/homeImg/slide1.PNG" class="d-block w-100" style="height:35vh; margin:1% auto;">
							</div>
							<div class="carousel-item">
								<img src="resources/homeImg/slide2.PNG" class="d-block w-100" style="height:35vh; margin:1% auto;">
							</div>
							<div class="carousel-item">
								<img src="resources/homeImg/slide3.PNG" class="d-block w-100" style="height:35vh; margin:1% auto;">
							</div>
						</div>
					</div>
		    	</div>
		    </div>
            </c:if>
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
	
	    if(position > 250){ 
	    	con.fadeIn(500); 
	    } else if(position < 250){ 
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